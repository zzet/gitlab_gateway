require "weary/client"
require "active_support/inflector"

module GitlabGateway
  class Client < Weary::Client

    required :private_token

    domain GitlabGateway.options[:api_domain]

    def initialize(attrs = {})
      attrs = GitlabGateway.options.merge(attrs)
      Config::VALID_OPTIONS_KEYS.each do |key|
        instance_variable_set("@#{key}".to_sym, attrs[key])
      end
    end
  end
end
