class PlansController < ApplicationController
  skip_after_action :verify_authorized, :verify_policy_scoped
  def index
    if Lecture.where(payment: true).count == 0
      redirect_to inprogress_path
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
    @user = current_user
    @user.save
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
