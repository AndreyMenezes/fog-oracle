require 'fog/oracle/models/collection'
require 'fog/oracle/models/compute/storage_array_plugin'

module Fog
  module Compute
    class Oracle
      class StorageArrayPlugins < Fog::Oracle::Collection
        model Fog::Compute::Oracle::StorageArrayPlugin

        def all()
          data = service.list_storage_array_plugins()
          load_response(data)
        end

        def get(id)
          data = service.get_storage_array_plugin(id_value(id))
          new_from_response(data)
        end
      end
    end
  end
end
