require 'logger'
require 'json'
require 'stripe'

class StripeEventsController < ApplicationController
  skip_before_action :authenticate_user!
  skip_after_action :verify_authorized
  skip_before_action :verify_authenticity_token, only: [:create]

  def create
    # Après le paiement, Stripe renvoie ici grâce au webhook
    Stripe.api_key = ENV['STRIPE_SECRET_KEY']
    endpoint_secret = ENV['STRIPE_SIGNING_SECRET']

    payload = request.body.read
    sig_header = request.env['HTTP_STRIPE_SIGNATURE']
    event = nil

    begin
        event = Stripe::Webhook.construct_event(
            payload, sig_header, endpoint_secret
        )
    rescue JSON::ParserError => e
        # Payload invalide
        return render json: { error: "Invalid payload" }, status: :bad_request
    rescue Stripe::SignatureVerificationError => e
        # Invalid signature
        return render json: { error: "Invalid signature" }, status: :bad_request
    end

    # Les webhook peut renvoyer deux événements différents
    case event.type
      when 'checkout.session.completed'
        handle_checkout_session_completed(event.data.object)
      when 'customer.subscription.deleted'
        handle_customer_subscription_deleted(event.data.object)
      when 'invoice.payment_failed'
        handle_invoice_payment_failed(event.data.object)
      else
        # Unexpected event type
        logger.info "Événement Stripe non géré : #{event.type}"
    end

    # OBLIGATOIRE : Répondre 200 OK à Stripe pour confirmer la bonne réception
    head :ok
  end

  private

  def handle_checkout_session_completed(checkout_session)
    logger.info "========== Handle checkout completed =========="
    # On récupère l'ID sauvegardé par Stripe et on identifie le client
    @id_user = checkout_session.client_reference_id
    @user = User.find(@id_user)
    return unless @user # Sécurité si l'utilisateur n'existe pas

    @user.stripe_customer_id = checkout_session.customer
    @user.pricing = checkout_session.amount_total.to_f / 100
    @user.paydate = Date.today
    # On vérifie le type de paiement
    if checkout_session.mode == "subscription"
      # Si le paiement est récurrent, sauvegarder le montant
      @user.plan = checkout_session.metadata.plan_id
      @user.collective = false
      @user.expire = nil
    elsif checkout_session.mode == "payment"
      # Si le paiement est en une fois, sauvegarder la date d'expiration
      @user.collective = true
      months = checkout_session.metadata&.plan_id.to_s[0..1].to_i
      @user.expire = Date.today + checkout_session.metadata.plan_id[0..1].to_i.months
      @user.plan = "pour 1 utilisateur jusqu'au #{@user.expire.strftime '%d/%m/%Y'}"
      create_invoice(checkout_session.metadata.plan_id)
    end
    # Envoyer un message de bienvenue
    if @user.save
      PlanMailer.welcome(@user).deliver_now
    end
  end

  def create_invoice(plan_id)
    return unless plan_id.present?

    Stripe::InvoiceItem.create({
      customer: @user.stripe_customer_id,
      price: plan_id,
    })

    invoice = Stripe::Invoice.create({
      customer: @user.stripe_customer_id,
      default_tax_rates: [ENV['STRIPE_VAT']],
      auto_advance: true, # auto-finalize this draft after ~1 hour
    })

    Stripe::Invoice.pay(invoice.id, {
      paid_out_of_band: true,
    })
  end

  def handle_invoice_payment_failed(invoice_infos)
    logger.info "Un paiement a échoué pour le client : #{invoice_infos.customer}"
  end

  def handle_customer_subscription_deleted(event_infos)
    @stripe_customer_id = event_infos.customer
    # Si le client a bien un abonnement ouvert (il a un id Stripe en DB)
    if (user = User.find_by(stripe_customer_id: stripe_customer_id))
      # Alors on note la date d'expiration
      user.update(expire: Date.today)
    end
  end

end
