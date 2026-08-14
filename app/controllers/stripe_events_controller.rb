class StripeEventsController < ApplicationController
  skip_before_action :authenticate_user!
  skip_after_action :verify_authorized, raise: false
  skip_before_action :verify_authenticity_token, only: [:create]

  def create
    Stripe.api_key = ENV['STRIPE_SECRET_KEY']
    endpoint_secret = ENV['STRIPE_SIGNING_SECRET']

    # UTILISER request.raw_post AU LIEU DE request.body.read
    payload = request.raw_post
    sig_header = request.env['HTTP_STRIPE_SIGNATURE']
    event = nil

    begin
      event = Stripe::Webhook.construct_event(
        payload, sig_header, endpoint_secret
      )
    rescue JSON::ParserError => e
      logger.error "Webhook Stripe : Payload JSON invalide"
      return render json: { error: "Invalid payload" }, status: :bad_request
    rescue Stripe::SignatureVerificationError => e
      logger.error "Webhook Stripe : Signature invalide (#{e.message})"
      return render json: { error: "Invalid signature" }, status: :bad_request
    end

    case event.type
    when 'checkout.session.completed'
      handle_checkout_session_completed(event.data.object)
    when 'customer.subscription.deleted'
      handle_customer_subscription_deleted(event.data.object)
    when 'invoice.payment_failed'
      handle_invoice_payment_failed(event.data.object)
    else
      logger.info "Événement Stripe non géré : #{event.type}"
    end

    head :ok
  end

  private

  def handle_checkout_session_completed(checkout_session)
    logger.info "========== Handle checkout completed =========="

    @id_user = checkout_session.client_reference_id
    @user = User.find_by(id: @id_user)

    unless @user
      logger.warn "Utilisateur non trouvé pour client_reference_id : #{@id_user.inspect}"
      return
    end

    @user.stripe_customer_id = checkout_session.customer
    @user.pricing = checkout_session.amount_total.to_f / 100
    @user.paydate = Date.today

    if checkout_session.mode == "subscription"
      @user.plan = checkout_session.metadata&.plan_id
      @user.collective = false
      @user.expire = nil
    elsif checkout_session.mode == "payment"
      @user.collective = true
      @user.expire = Date.today + 12.months
      @user.plan = "pour 1 utilisateur jusqu'au #{@user.expire.strftime('%d/%m/%Y')}"

      create_invoice(checkout_session.metadata&.plan_id)
    end

    if @user.save
      PlanMailer.welcome(@user).deliver_now
    else
      logger.error "Échec de sauvegarde utilisateur : #{@user.errors.full_messages.join(', ')}"
    end
  end

  def create_invoice(plan_id)
    return unless plan_id.present? && @user&.stripe_customer_id.present?

    Stripe::InvoiceItem.create({
      customer: @user.stripe_customer_id,
      price: plan_id,
    })

    invoice = Stripe::Invoice.create({
      customer: @user.stripe_customer_id,
      default_tax_rates: [ENV['STRIPE_VAT']],
      auto_advance: true,
    })

    Stripe::Invoice.pay(invoice.id, {
      paid_out_of_band: true,
    })
  rescue Stripe::StripeError => e
    logger.error "Erreur lors de la création de facture Stripe : #{e.message}"
  end

  def handle_invoice_payment_failed(invoice_infos)
    logger.info "Un paiement a échoué pour le client : #{invoice_infos.customer}"
  end

  def handle_customer_subscription_deleted(event_infos)
    stripe_customer_id = event_infos.customer

    if (user = User.find_by(stripe_customer_id: stripe_customer_id))
      user.update(expire: Date.today)
    else
      logger.warn "Abonnement supprimé mais client Stripe non trouvé en DB : #{stripe_customer_id}"
    end
  end
end
