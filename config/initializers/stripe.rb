if Rails.env.production?
  Rails.configuration.stripe = {
    :pubishable_key => ENV['STRIPE_PUBLISHABLE_KEY'],
    :secret_key => ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    :publishable_key => 'pk_test_lIn7Gy4z0A2hxz55CQjkrErg',
    :secret_key => 'sk_test_ztUnAMMYm0WCCSB406bnDDtZ'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]
