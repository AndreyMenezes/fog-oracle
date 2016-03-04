module Fog
  module Compute
    class Oracle
      class Real
        def list_zones()
          request(
            :expects  => [200],
            :method   => 'GET',
            :path     => 'Zone',
          )
        end
      end

      class Mock
        include Fog::Oracle::JsonUtils

        def list_zones()
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

