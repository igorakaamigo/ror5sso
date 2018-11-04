require File.expand_path('../../lib/omniauth/strategies/idp', __dir__)

OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :idp, ENV['IDP_KEY'], ENV['IDP_SECRET']
end
