require 'logger'

class StripeEventsController < ApplicationController
  skip_before_action :authenticate_user!
  skip_after_action :verify_authorized
  skip_before_action :verify_authenticity_token, only: :create

  def create
    require 'json'
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
        # Invalid payload
        status 400
        return
    rescue Stripe::SignatureVerificationError => e
        # Invalid signature
        status 400
        return
    end

    case event.type
    when 'checkout.session.completed'
      handle_checkout_session_completed(event.data.object)
    when 'invoice.payment_failed'

      handle_invoice_payment_failed(event.data.object)
    else
      # Unexpected event type
      status 400
      return
    end
  end

  def handle_checkout_session_completed(checkout_session)
    # On récupère l'ID sauvegardé par Stripe et on identifie le client
    @id_user = checkout_session.client_reference_id
    @user = User.find(@id_user)
    @user.stripe_customer_id = checkout_session.customer
    # On vérifie le type de paiement
    if checkout_session.display_items.first().type == "plan"
      # Si le paiement est récurrent, sauvegarder le montant
      @user.plan = checkout_session.display_items.first().plan.id
      @user.pricing = checkout_session.display_items.first().amount / 100
      @user.paydate = Date.today
      @user.collective = false
      @user.expire = nil
    elsif checkout_session.display_items.first().type == "sku"
      # Si le paiement est en une fois, sauvegarder la date d'expiration
      @user.paydate = Date.today
      @user.pricing = 24
      @user.collective = true
      @user.expire = Date.today + 1.year
      @user.plan = "24€ pour 1 utilisateur jusqu'au #{@user.expire.strftime '%d/%m/%Y'}"
      # Afficher une notice pour rappeler la date d'expiration de l'abonnement
      flash[:notice] = "Votre abonnement fermera le #{@user.expire.strftime '%d/%m/%Y'}"
    end
    # Envoyer un message de bienvenue
    if @user.save
      PlanMailer.welcome(@user).deliver_now
    end
  end

  def handle_invoice_payment_failed(invoice_infos)
    @stripe_customer_id = invoice_infos.customer
    @user = User.where(stripe_customer_id: @stripe_customer_id).first
    @user.expire = Date.today
    @user.save
  end

end
