require 'fog/oracle/models/collection'
require 'fog/oracle/models/compute/archive_management_attributes'

module Fog
  module Compute
    class Oracle
      class ArchiveManagementAttributeses < Fog::Oracle::Collection
        model Fog::Compute::Oracle::ArchiveManagementAttributes

        def all()
          data = service.list_archive_management_attributeses()
          load_response(data)
        end

        def get(id)
          data = service.get_archive_management_attributes(id_value(id))
          new_from_response(data)
        end
      end
    end
  end
end
