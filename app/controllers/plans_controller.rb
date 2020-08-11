require "logger"

class PlansController < ApplicationController
  skip_after_action :verify_authorized, :verify_policy_scoped

  def index
    # Si aucun cours n'est payant, rediriger vers une page "en construction".
    if Lecture.where(payment: true).count == 0
      redirect_to inprogress_path
    end
    # Si l'utilisateur a un abonnement en cours
    if current_user.pricing.present?
      # Récupérer le plan qui a été sélectionné par l'utilisateur.
      @plan = Plan.where(price: current_user.pricing).first
      if @plan.nil?
        @plan = Plan.where(plan_name: "erreur").first
      end
    end
    # Récupérer les paiements récurrents, uniques, et par virement.
    @recurrent_plans = Plan.where(visible: true).where(payment: "recurrent").order("price ASC")
    @unique_plans = Plan.where(visible: true).where(payment: "unique").order("price ASC")
    @virement_plans = Plan.where(visible: true).where(payment: "virement").order("price ASC")
    @don_plans = Plan.where(visible: true).where(payment: "don")
  end

 def planselected
    # Le mode : est-ce un "subscription" ou un "payment"
    @plan_mode = params[:mode]
    # Le plan sélectionné a un nom en BDD qui est le même côté Stripe
    @plan_id = params[:id]

    Stripe.api_key = ENV['STRIPE_SECRET_KEY']
    # La méthode n'est pas la même selon si c'est un abonnement ou un paiement unique
    if @plan_mode == 'subscription'
      @session = create_session_with_subscription()
    elsif @plan_mode== 'payment'
      @session = create_session_with_payment()
    end

    @session_id = @session.id
  end

  def create_session_with_subscription
    return Stripe::Checkout::Session.create(
      client_reference_id: current_user.id,
      # Les informations dans metadata seront récupérable dans
      # l'évènement de retour du webhook: stripe_events_controller::handle_checkout_session_completed
      metadata: {
        plan_id: @plan_id,
      },
      payment_method_types: ['card'],
      line_items: [{
        price: @plan_id,
        quantity: 1,
      }],
      subscription_data: {
        #TODO: modifier pour l'id en prod.
        default_tax_rates: ['txr_1H5wUQGSIfDI2OQZz67hgSpF'],
      },
      mode: "subscription",
      success_url: ENV['domain']+'/plans',
      cancel_url: ENV['domain']+'/plans',
    )
  end

  def create_session_with_payment
    return Stripe::Checkout::Session.create(
      client_reference_id: current_user.id,
      # Les informations dans metadata seront récupérable dans
      # l'évènement de retour du webhook: stripe_events_controller::handle_checkout_session_completed
      metadata: {
        plan_id: @plan_id,
      },
      payment_method_types: ['card'],
      line_items: [{
        price: @plan_id,
        quantity: 1,
      }],
      mode: "payment",
      success_url: ENV['domain']+'/plans',
      cancel_url: ENV['domain']+'/plans',
    )
  end

  def show
  end

  def inprogress
  end

  def create
  end

  def cancel
    # Supprimer le customer sur Stripe quand on a son ID
    Stripe.api_key = ENV['STRIPE_SECRET_KEY']
    if current_user.stripe_customer_id.present?
      customer = Stripe::Customer.retrieve(current_user.stripe_customer_id)
      customer.delete
    end
    # Vider les éléments de la base de données
    current_user.paydate = nil
    current_user.plan = nil
    current_user.stripe_customer_id = nil
    current_user.pricing = nil
    current_user.expire = Date.today
    @user = current_user
    @user.save
    redirect_to plans_path
    # ===== Supprimer la Subscription quand on a son ID
    # subscription = Stripe::Subscription.retrieve(current_user.stripe_customer_id)
    # subscription.delete
    # current_user.paydate = nil
    # current_user.plan = nil
    # current_user.stripe_customer_id = nil
    # @user = current_user
    # @user.save
    # redirect_to plans_path
  end

end
