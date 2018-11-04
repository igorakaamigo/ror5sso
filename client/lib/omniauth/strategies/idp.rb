module OmniAuth
  module Strategies
    class Idp < OmniAuth::Strategies::OAuth2
      option :name, :idp

      option :client_options, {
          site: ENV.fetch('IDP_SERVER') { 'localhost' },
          authorize_path: '/oauth/authorize'
      }

      uid do
        raw_info['id']
      end

      info do
        {
            :email => raw_info['email']
        }
      end

      def raw_info
        @raw_info ||= access_token.get('/api/v1/me.json').parsed
      end
    end
  end
end
