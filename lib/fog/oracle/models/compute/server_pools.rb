require 'fog/oracle/models/collection'
require 'fog/oracle/models/compute/server_pool'

module Fog
  module Compute
    class Oracle
      class ServerPools < Fog::Oracle::Collection
        model Fog::Compute::Oracle::ServerPool

        def all()
          data = service.list_server_pools()
          load_response(data)
        end

        def get(id)
          data = service.get_server_pool(id_value(id))
          new_from_response(data)
        end
      end
    end
  end
end
