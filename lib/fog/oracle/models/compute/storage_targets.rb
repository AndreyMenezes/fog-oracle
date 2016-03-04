require 'fog/oracle/models/collection'
require 'fog/oracle/models/compute/storage_target'

module Fog
  module Compute
    class Oracle
      class StorageTargets < Fog::Oracle::Collection
        model Fog::Compute::Oracle::StorageTarget

        def all()
          data = service.list_storage_targets()
          load_response(data)
        end

        def get(id)
          data = service.get_storage_target(id_value(id))
          new_from_response(data)
        end
      end
    end
  end
end
