require 'fog/oracle/models/collection'
require 'fog/oracle/models/compute/virtual_disk'

module Fog
  module Compute
    class Oracle
      class VirtualDisks < Fog::Oracle::Collection
        model Fog::Compute::Oracle::VirtualDisk

        def all()
          data = service.list_virtual_disks()
          load_response(data)
        end

        def get(id)
          data = service.get_virtual_disk(id_value(id))
          new_from_response(data)
        end
      end
    end
  end
end
