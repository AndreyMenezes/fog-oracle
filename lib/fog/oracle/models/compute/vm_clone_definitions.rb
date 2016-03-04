require 'fog/oracle/models/collection'
require 'fog/oracle/models/compute/vm_clone_definition'

module Fog
  module Compute
    class Oracle
      class VmCloneDefinitions < Fog::Oracle::Collection
        model Fog::Compute::Oracle::VmCloneDefinition

        def all()
          data = service.list_vm_clone_definitions()
          load_response(data)
        end

        def get(id)
          data = service.get_vm_clone_definition(id_value(id))
          new_from_response(data)
        end
      end
    end
  end
end
