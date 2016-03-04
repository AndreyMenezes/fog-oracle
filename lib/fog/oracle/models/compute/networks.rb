require 'fog/oracle/models/collection'
require 'fog/oracle/models/compute/network'

module Fog
  module Compute
    class Oracle
      class Networks < Fog::Oracle::Collection
        model Fog::Compute::Oracle::Network

        def all()
          data = service.list_networks()
          load_response(data)
        end

        def get(id)
          data = service.get_network(id_value(id))
          new_from_response(data)
        end
      end
    end
  end
end
