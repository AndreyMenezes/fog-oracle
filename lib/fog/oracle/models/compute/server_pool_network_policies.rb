require 'fog/oracle/models/collection'
require 'fog/oracle/models/compute/server_pool_network_policy'

module Fog
  module Compute
    class Oracle
      class ServerPoolNetworkPolicies < Fog::Oracle::Collection
        model Fog::Compute::Oracle::ServerPoolNetworkPolicy

        def all()
          data = service.list_server_pool_network_policies()
          load_response(data)
        end

        def get(id)
          data = service.get_server_pool_network_policy(id_value(id))
          new_from_response(data)
        end
      end
    end
  end
end
