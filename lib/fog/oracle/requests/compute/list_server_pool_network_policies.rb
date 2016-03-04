module Fog
  module Compute
    class Oracle
      class Real
        def list_server_pool_network_policies()
          request(
            :expects  => [200],
            :method   => 'GET',
            :path     => 'ServerPoolNetworkPolicy',
          )
        end
      end

      class Mock
        include Fog::Oracle::JsonUtils

        def list_server_pool_network_policies()
          response = Excon::Response.new
          response.status = 200
          response.body = json_decode <<-JSON
            []
          JSON
          response
        end
      end
    end
  end
end

