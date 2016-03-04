module Fog
  module Compute
    class Oracle
      class Real
        def list_cluster_storage_fses()
          request(
            :expects  => [200],
            :method   => 'GET',
            :path     => 'ClusterStorageFs',
          )
        end
      end

      class Mock
        include Fog::Oracle::JsonUtils

        def list_cluster_storage_fses()
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

