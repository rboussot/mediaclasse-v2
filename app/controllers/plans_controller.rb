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
    else
      # Récupérer les paiements récurrents, uniques, et par virement.
      @recurrent_plans = Plan.where(visible: true).where(payment: "recurrent").order("price ASC")
      @unique_plans = Plan.where(visible: true).where(payment: "unique").order("price ASC")
      @virement_plans = Plan.where(visible: true).where(payment: "virement").order("price ASC")
    end
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
