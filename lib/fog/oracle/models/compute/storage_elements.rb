require 'fog/oracle/models/collection'
require 'fog/oracle/models/compute/storage_element'

module Fog
  module Compute
    class Oracle
      class StorageElements < Fog::Oracle::Collection
        model Fog::Compute::Oracle::StorageElement

        def all()
          data = service.list_storage_elements()
          load_response(data)
        end

        def get(id)
          data = service.get_storage_element(id_value(id))
          new_from_response(data)
        end
      end
    end
  end
end
