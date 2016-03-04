require 'fog/oracle/models/collection'
require 'fog/oracle/models/compute/assembly_vm'

module Fog
  module Compute
    class Oracle
      class AssemblyVms < Fog::Oracle::Collection
        model Fog::Compute::Oracle::AssemblyVm

        def all()
          data = service.list_assembly_vms()
          load_response(data)
        end

        def get(id)
          data = service.get_assembly_vm(id_value(id))
          new_from_response(data)
        end
      end
    end
  end
end
