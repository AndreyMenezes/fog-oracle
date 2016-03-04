module Fog
  module Compute
    class Oracle
      class Real
        def list_server_update_repository_configurations()
          request(
            :expects  => [200],
            :method   => 'GET',
            :path     => 'ServerUpdateRepositoryConfiguration',
          )
        end
      end

      class Mock
        include Fog::Oracle::JsonUtils

        def list_server_update_repository_configurations()
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

