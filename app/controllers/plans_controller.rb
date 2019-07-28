class PlansController < ApplicationController
  skip_after_action :verify_authorized, :verify_policy_scoped
  def index
    # Si aucun cours n'est payant, rediriger vers une page "en construction"
    if Lecture.where(payment: true).count == 0
      redirect_to inprogress_path
    end
    # Si l'utilisateur a un compte annuel
    if current_user && current_user.plan == "annuel"
      # Supprimer le plan Stripe réccurrent
      Stripe.api_key = ENV['STRIPE_SECRET_KEY']
      customer = Stripe::Customer.retrieve(current_user.stripe_customer_id)
      customer.delete
      # Définir l'abonnement limité dans le temps
      current_user.paydate = nil
      current_user.stripe_customer_id = nil
      current_user.pricing = 24
      current_user.collective = true
      current_user.expire = Date.today + 1.year
      current_user.plan = "#{current_user.pricing.round}€ pour 1 utilisateur jusqu'au #{current_user.expire.strftime '%d/%m/%Y'}"
      @user = current_user
      @user.save
      # Afficher une notice pour rappeler la date d'expiration de l'abonnement
      flash[:notice] = "Votre abonnement fermera le #{current_user.expire.strftime '%d/%m/%Y'}"
    end
  end

  def show
  end

  def inprogress
  end

  def create
    # Set your secret key: remember to change this to your live secret key in production
    # See your keys here: https://dashboard.stripe.com/account/apikeys
    Stripe.api_key = ENV['STRIPE_SECRET_KEY']

    # Get the credit card details submitted by the form
    token = params[:stripeToken]
    plan = params[:plan]

    # Create a Customer
    customer = Stripe::Customer.create(
      :source => token,
      :plan => plan,
      :email => current_user.email
    )
    current_user.stripe_customer_id = customer['id']
    current_user.paydate = Time.at(customer['created'])
    current_user.plan = plan
    current_user.pricing = customer["subscriptions"].first["items"].first["plan"]["amount"]/100.to_f
    current_user.expire = nil
    @user = current_user
    @user.save
    # Si l'utilisateur a un compte récurrent, envoyer un email spécial
    if @user.save && @user.plan != "annuel"
      PlanMailer.welcome(@user).deliver_now
    end
    # Redirect to the plans page
    redirect_to plans_path
  end

  def cancel
    Stripe.api_key = ENV['STRIPE_SECRET_KEY']
    # ===== Supprimer le customer quand on a son ID
    customer = Stripe::Customer.retrieve(current_user.stripe_customer_id)
    customer.delete
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
