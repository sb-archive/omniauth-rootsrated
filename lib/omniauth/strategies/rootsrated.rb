require 'omniauth/strategies/oauth2'

module OmniAuth
  module Strategies
    class RootsRated < OmniAuth::Strategies::OAuth2
      option :name, :rootsrated

      option :client_options, {
        :site => "https://dashboard.rootsrated.com",
        :authorize_path => "/oauth/authorize"
      }

      uid { raw_info["id"] }

      info do
        prune!({
          'verified_email' => raw_info['email'],
        })
      end

      extra do
        hash = {}
        hash['raw_info'] = raw_info unless skip_info?
        prune! hash
      end

      def raw_info
        @raw_info ||= access_token.get('/me.json').parsed
      end

      private

      def prune!(hash)
        hash.delete_if do |_, value|
          prune!(value) if value.is_a?(Hash)
          value.nil? || (value.respond_to?(:empty?) && value.empty?)
        end
      end
    end
  end
end
