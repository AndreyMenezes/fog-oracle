require 'fog/oracle/models/collection'
require 'fog/oracle/models/compute/vm_clone_storage_mapping'

module Fog
  module Compute
    class Oracle
      class VmCloneStorageMappings < Fog::Oracle::Collection
        model Fog::Compute::Oracle::VmCloneStorageMapping

        def all()
          data = service.list_vm_clone_storage_mappings()
          load_response(data)
        end

        def get(id)
          data = service.get_vm_clone_storage_mapping(id_value(id))
          new_from_response(data)
        end
      end
    end
  end
end
