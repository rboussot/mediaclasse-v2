Rails.configuration.stripe = {
  :publishable_key => ENV['STRIPE_PUBLISHABLE_KEY'],
  :secret_key      => ENV['STRIPE_SECRET_KEY']
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]

#this is the line that supposedly tells stripe_event to verify the stripe signature
StripeEvent.signing_secret = ENV['STRIPE_SIGNING_SECRET']

StripeEvent.configure do |events|
  events.all do |event|
    if event.type == 'invoice.payment_failed'
      #handled this event...removed code for clarity since works fine
    end
  end
end
