require 'fog/oracle/models/collection'
require 'fog/oracle/models/compute/vm_disk_mapping'

module Fog
  module Compute
    class Oracle
      class VmDiskMappings < Fog::Oracle::Collection
        model Fog::Compute::Oracle::VmDiskMapping

        def all()
          data = service.list_vm_disk_mappings()
          load_response(data)
        end

        def get(id)
          data = service.get_vm_disk_mapping(id_value(id))
          new_from_response(data)
        end
      end
    end
  end
end
