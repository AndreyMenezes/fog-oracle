require 'fog/oracle/models/collection'
require 'fog/oracle/models/compute/storage_initiator'

module Fog
  module Compute
    class Oracle
      class StorageInitiators < Fog::Oracle::Collection
        model Fog::Compute::Oracle::StorageInitiator

        def all()
          data = service.list_storage_initiators()
          load_response(data)
        end

        def get(id)
          data = service.get_storage_initiator(id_value(id))
          new_from_response(data)
        end
      end
    end
  end
end
