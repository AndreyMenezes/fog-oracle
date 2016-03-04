require 'fog/oracle/models/collection'
require 'fog/oracle/models/compute/storage_array'

module Fog
  module Compute
    class Oracle
      class StorageArrays < Fog::Oracle::Collection
        model Fog::Compute::Oracle::StorageArray

        def all()
          data = service.list_storage_arrays()
          load_response(data)
        end

        def get(id)
          data = service.get_storage_array(id_value(id))
          new_from_response(data)
        end
      end
    end
  end
end
