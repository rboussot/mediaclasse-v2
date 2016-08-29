class StripeCallbacksController < ApplicationController
  skip_before_action :authenticate_user!
  skip_after_action :verify_authorized
  skip_before_filter :verify_authenticity_token

  def create
      @amount_cents = @order.amount_cents

      customer = Stripe::Customer.create(
        source: params[:stripeToken],
        email:  params[:stripeEmail]
      )

      @order.update(payment: charge.to_json, state: 'paid')
      redirect_to order_path(@order)

    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to new_order_payment_path(@order)

  end
end
