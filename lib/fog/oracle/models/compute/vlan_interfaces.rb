require 'fog/oracle/models/collection'
require 'fog/oracle/models/compute/vlan_interface'

module Fog
  module Compute
    class Oracle
      class VlanInterfaces < Fog::Oracle::Collection
        model Fog::Compute::Oracle::VlanInterface

        def all()
          data = service.list_vlan_interfaces()
          load_response(data)
        end

        def get(id)
          data = service.get_vlan_interface(id_value(id))
          new_from_response(data)
        end
      end
    end
  end
end
