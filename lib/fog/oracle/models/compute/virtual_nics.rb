require 'fog/oracle/models/collection'
require 'fog/oracle/models/compute/virtual_nic'

module Fog
  module Compute
    class Oracle
      class VirtualNics < Fog::Oracle::Collection
        model Fog::Compute::Oracle::VirtualNic

        def all()
          data = service.list_virtual_nics()
          load_response(data)
        end

        def get(id)
          data = service.get_virtual_nic(id_value(id))
          new_from_response(data)
        end
      end
    end
  end
end
