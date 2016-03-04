module Fog
  module Compute
    class Oracle
      class Real
        def list_access_groups()
          request(
            :expects  => [200],
            :method   => 'GET',
            :path     => 'AccessGroup',
          )
        end
      end

      class Mock
        include Fog::Oracle::JsonUtils

        def list_access_groups()
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

