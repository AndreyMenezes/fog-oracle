require 'fog/oracle/models/collection'
require 'fog/oracle/models/compute/storage_path'

module Fog
  module Compute
    class Oracle
      class StoragePaths < Fog::Oracle::Collection
        model Fog::Compute::Oracle::StoragePath

        def all()
          data = service.list_storage_paths()
          load_response(data)
        end

        def get(id)
          data = service.get_storage_path(id_value(id))
          new_from_response(data)
        end
      end
    end
  end
end
