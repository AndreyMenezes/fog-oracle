require 'fog/oracle/models/collection'
require 'fog/oracle/models/compute/assembly_virtual_disk'

module Fog
  module Compute
    class Oracle
      class AssemblyVirtualDisks < Fog::Oracle::Collection
        model Fog::Compute::Oracle::AssemblyVirtualDisk

        def all()
          data = service.list_assembly_virtual_disks()
          load_response(data)
        end

        def get(id)
          data = service.get_assembly_virtual_disk(id_value(id))
          new_from_response(data)
        end
      end
    end
  end
end
