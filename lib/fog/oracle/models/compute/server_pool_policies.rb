require 'fog/oracle/models/collection'
require 'fog/oracle/models/compute/server_pool_policy'

module Fog
  module Compute
    class Oracle
      class ServerPoolPolicies < Fog::Oracle::Collection
        model Fog::Compute::Oracle::ServerPoolPolicy

        def all()
          data = service.list_server_pool_policies()
          load_response(data)
        end

        def get(id)
          data = service.get_server_pool_policy(id_value(id))
          new_from_response(data)
        end
      end
    end
  end
end
