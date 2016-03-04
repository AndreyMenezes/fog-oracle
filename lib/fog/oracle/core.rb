require 'fog/core'
require 'fog/json'
require 'fog/xml'

module Fog
  module Oracle
    extend Fog::Provider

    module Errors
      class ServiceError < Fog::Errors::Error; end
      class ServiceUnavailable < ServiceError; end
      class BadRequest < ServiceError; end
      class InterfaceNotImplemented < Fog::Errors::Error; end
    end

    service(:compute, 'Compute')

    module JsonUtils
      def json_encode(body)
        encoded = Fog::JSON.encode(body)
        encoded
      end

      def json_decode(body)
        parsed = Fog::JSON.decode(body)
        snakecase_hash_keys(parsed)
        # decode_time_attrs(parsed)
        parsed
      end

      def snakecase_hash_keys(value)
        case value
        when Hash
          value.keys.each do |key|
            new_key = key.underscore
            value[new_key] = value.delete(key)
            snakecase_hash_keys(value[new_key])
          end
        when Array
          value.each do |it|
            snakecase_hash_keys(it)
          end
        end
      end
    end

    module Core
      include JsonUtils

      def core_initialize(options)
        @api_url                  = options[:oracle_url]
        @username                 = options[:oracle_username]
        @password                 = options[:oracle_password]
        @connection_options       = options[:connection_options] || {}
        @persistent               = options[:persistent] || false
        @connection = Fog::XML::Connection.new(@api_url, @persistent, @connection_options)
      end

      def escape(str)
        str.gsub(/([^a-zA-Z0-9_.-]+)/) do
          '%' + $1.unpack('H2' * $1.bytesize).join('%').upcase
        end
      end

      def request(opts)
        opts[:path] = '/ovm/core/wsapi/rest/' + opts[:path]

        hash = Base64.encode64(@username + ":" + @password).delete("\r\n")

        opts[:headers] = {
          "Accept" => "application/json",
          'Authorization' => "Basic #{hash}"
        }.merge(opts[:headers] || {})

        if opts[:body]
          opts[:headers]["Content-Type"] = "application/json"
          opts[:body] = json_encode(opts[:body])
        end

        response = @connection.request(opts)

        if response.headers["Content-Type"] == "application/json"
          response.body = json_decode(response.body)
        end

        # puts @api_url, opts, response

        response
      end
    end
  end
end
