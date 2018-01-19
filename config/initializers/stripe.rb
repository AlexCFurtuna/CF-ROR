if Rails.env.production?
  Rails.configuration.stripe = {
    publishable_key: ENV['STRIPE_PUBLISHABLE_KEY'],
    secret_key: ENV['STRIPE_SECRET_KEY']
  }

 else
  Rails.configuration.stripe = {
    publishable_key: 'pk_test_FtAgNpVpDq9EHwJpfADb36ao',
    secret_key: 'sk_test_xc1fuPh5G8nYFMns437tz2OJ'
  }
 end

Stripe.api_key = Rails.configuration.stripe[:secret_key]
