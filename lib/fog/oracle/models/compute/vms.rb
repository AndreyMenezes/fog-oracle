require 'fog/oracle/models/collection'
require 'fog/oracle/models/compute/vm'

module Fog
  module Compute
    class Oracle
      class Vms < Fog::Oracle::Collection
        model Fog::Compute::Oracle::Vm

        def all()
          data = service.list_vms()
          load_response(data)
        end

        def get(id)
          data = service.get_vm(id_value(id))
          new_from_response(data)
        end
      end
    end
  end
end
