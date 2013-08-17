module GitlabGateway
  module Config

    # Defailt api version
    DEFAULT_API_VERSION = "v3"

    # Defaultapi domain
    DEFAULT_API_DOMAIN = 'http://127.0.0.1:80'

    # Defailt api token
    DEFAULT_PRIVATE_TOKEN = nil

    # Defailt response format
    DEFAULT_FORMAT = "json"

    # Valid options keys
    VALID_OPTIONS_KEYS = [
      :private_token,
      :api_domain,
      :api_version,
      :format
    ]

    # Valid options accessor
    attr_accessor *VALID_OPTIONS_KEYS

    def self.extended(base)
      base.reset
    end

    def configure
      yield self
      self
    end

    # Create a hash of options and their values
    #
    # @return [Hash]
    def options
      options = {}
      VALID_OPTIONS_KEYS.each{|k| options[k] = send(k)}
      options
    end

    # Reset config
    #
    # @return [self]
    def reset
      self.private_token  = DEFAULT_PRIVATE_TOKEN
      self.api_domain     = DEFAULT_API_DOMAIN
      self.api_version    = DEFAULT_API_VERSION
      self
    end

  end
end
