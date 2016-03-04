require 'fog/oracle/models/collection'
require 'fog/oracle/models/compute/virtual_switch'

module Fog
  module Compute
    class Oracle
      class VirtualSwitches < Fog::Oracle::Collection
        model Fog::Compute::Oracle::VirtualSwitch

        def all()
          data = service.list_virtual_switches()
          load_response(data)
        end

        def get(id)
          data = service.get_virtual_switch(id_value(id))
          new_from_response(data)
        end
      end
    end
  end
end
