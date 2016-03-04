require 'fog/oracle/models/collection'
require 'fog/oracle/models/compute/storage_ability_record'

module Fog
  module Compute
    class Oracle
      class StorageAbilityRecords < Fog::Oracle::Collection
        model Fog::Compute::Oracle::StorageAbilityRecord

        def all()
          data = service.list_storage_ability_records()
          load_response(data)
        end

        def get(id)
          data = service.get_storage_ability_record(id_value(id))
          new_from_response(data)
        end
      end
    end
  end
end
