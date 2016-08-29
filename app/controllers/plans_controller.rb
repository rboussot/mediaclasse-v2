class PlansController < ApplicationController
  skip_after_action :verify_authorized, :verify_policy_scoped
  def index

  end

  def show
  end

  def create
    # Set your secret key: remember to change this to your live secret key in production
    # See your keys here: https://dashboard.stripe.com/account/apikeys
    Stripe.api_key = "sk_test_J1Bfbw0jjyR7SRc8fEJcaphj"

    # Get the credit card details submitted by the form
    token = params[:stripeToken]
    plan = params[:plan]

    # Create a Customer
    customer = Stripe::Customer.create(
      :source => token,
      :plan => plan,
      :email => "payinguser@example.com"
    )
    current_user.stripe_customer_id = customer['subscriptions']['data'][0]['id']
    current_user.paydate = customer['subscriptions']['data'][0]['plan']['created']
    redirect_to root_path
  end
end

# ========== EXEMPLE DE JSON RENVOYE ==========

#<Stripe::Customer:0x3ffa17a68f50 id=cus_965m95hcGcQodK> JSON:
#{ "id": "cus_965m95hcGcQodK",
# "object": "customer",
#  "account_balance": 0,
#   "created": 1472491851,
#    "currency": "eur",
#     "default_source": "card_18ntatGSIfDI2OQZ3z6Tl9E4",
#      "delinquent": false,
#       "description": null,
#        "discount": null,
#         "email": "payinguser@example.com",
#          "livemode": false,
#           "metadata":
#{},
# "shipping": null,
#  "sources":
#{"object":"list",
#"data":[
#{"id":"card_18ntatGSIfDI2OQZ3z6Tl9E4",
#"object":"card",
#"address_city":null,
#"address_country":null,
#"address_line1":null,
#"address_line1_check":null,
#"address_line2":null,
#"address_state":null,
#"address_zip":null,
#"address_zip_check":null,
#"brand":"Visa",
#"country":"US",
#"customer":"cus_965m95hcGcQodK",
#"cvc_check":"pass",
#"dynamic_last4":null,
#"exp_month":12,
#"exp_year":2018,
#"fingerprint":"CECqguKHnVD8rzyA",
#"funding":"credit",
#"last4":"4242",
#"metadata":
#{},
#"name":"romain@gmail.com",
#"tokenization_method":null}],
#"has_more":false,
#"total_count":1,
#"url":"/v1/customers/cus_965m95hcGcQodK/sources"},
# "subscriptions":
#{"object":"list",
#"data":[
#{"id":"sub_965mAvVQ6xLrYC",
#"object":"subscription",
#"application_fee_percent":null,
#"cancel_at_period_end":false,
#"canceled_at":null,
#"created":1472491851,
#"current_period_end":1475170251,
#"current_period_start":1472491851,
#"customer":"cus_965m95hcGcQodK",
#"discount":null,
#"ended_at":null,
#"livemode":false,
#"metadata":
#{},
#"plan":
#{"id":"trente",
#"object":"plan",
#"amount":3000,
#"created":1472467218,
#"currency":"eur",
#"interval":"month",
#"interval_count":1,
#"livemode":false,
#"metadata":
#{},
#"name":"30 € par mois",
#"statement_descriptor":null,
#"trial_period_days":null},
#"quantity":1,
#"start":1472491851,
#"status":"active",
#"tax_percent":null,
#"trial_end":null,
#"trial_start":null}],
#"has_more":false,
#"total_count":1,
#"url":"/v1/customers/cus_965m95hcGcQodK/subscriptions"} }
#
# ========== EXEMPLE DE JSON RENVOYE ==========
#
# {
#   "created": 1326853478,
#
#   "livemode": false,
#   "id": "evt_00000000000000",
#   "type": "invoice.payment_succeeded",
#   "object": "event",
#   "request": null,
#   "pending_webhooks": 1,
#   "api_version": "2016-07-06",
#   "data": {
#     "object": {
#       "id": "in_00000000000000",
#       "object": "invoice",
#       "amount_due": 0,
#       "application_fee": null,
#       "attempt_count": 0,
#       "attempted": true,
#       "charge": "_00000000000000",
#       "closed": true,
#       "currency": "eur",
#       "customer": "cus_00000000000000",
#       "date": 1472475689,
#       "description": null,
#       "discount": null,
#       "ending_balance": null,
#       "forgiven": false,
#       "lines": {
#         "data": [
#           {
#             "id": "sub_961Rtio0SSEjoT",
#             "object": "line_item",
#             "amount": 3000,
#             "currency": "eur",
#             "description": null,
#             "discountable": true,
#             "livemode": true,
#             "metadata": {},
#             "period": {
#               "start": 1475154089,
#               "end": 1477746089
#             },
#             "plan": {
#               "id": "trente",
#               "object": "plan",
#               "amount": 3000,
#               "created": 1472467218,
#               "currency": "eur",
#               "interval": "month",
#               "interval_count": 1,
#               "livemode": false,
#               "metadata": {},
#               "name": "30 € par mois",
#               "statement_descriptor": null,
#               "trial_period_days": null
#             },
#             "proration": false,
#             "quantity": 1,
#             "subscription": null,
#             "type": "subscription"
#           }
#         ],
#         "total_count": 1,
#         "object": "list",
#         "url": "/v1/invoices/in_18npOHGSIfDI2OQZ3ob4Shnz/lines"
#       },
#       "livemode": false,
#       "metadata": {},
#       "next_payment_attempt": 1472479289,
#       "paid": true,
#       "period_end": 1472475689,
#       "period_start": 1472475689,
#       "receipt_number": null,
#       "starting_balance": 0,
#       "statement_descriptor": null,
#       "subscription": null,
#       "subtotal": 0,
#       "tax": null,
#       "tax_percent": null,
#       "total": 0,
#       "webhooks_delivered_at": null
#     }
#   }
# }
# Response
# None

# Cancel
