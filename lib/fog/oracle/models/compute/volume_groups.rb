require 'fog/oracle/models/collection'
require 'fog/oracle/models/compute/volume_group'

module Fog
  module Compute
    class Oracle
      class VolumeGroups < Fog::Oracle::Collection
        model Fog::Compute::Oracle::VolumeGroup

        def all()
          data = service.list_volume_groups()
          load_response(data)
        end

        def get(id)
          data = service.get_volume_group(id_value(id))
          new_from_response(data)
        end
      end
    end
  end
end
