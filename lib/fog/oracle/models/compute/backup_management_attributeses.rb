require 'fog/oracle/models/collection'
require 'fog/oracle/models/compute/backup_management_attributes'

module Fog
  module Compute
    class Oracle
      class BackupManagementAttributeses < Fog::Oracle::Collection
        model Fog::Compute::Oracle::BackupManagementAttributes

        def all()
          data = service.list_backup_management_attributeses()
          load_response(data)
        end

        def get(id)
          data = service.get_backup_management_attributes(id_value(id))
          new_from_response(data)
        end
      end
    end
  end
end
