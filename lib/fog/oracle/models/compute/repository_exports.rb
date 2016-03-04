require 'fog/oracle/models/collection'
require 'fog/oracle/models/compute/repository_export'

module Fog
  module Compute
    class Oracle
      class RepositoryExports < Fog::Oracle::Collection
        model Fog::Compute::Oracle::RepositoryExport

        def all()
          data = service.list_repository_exports()
          load_response(data)
        end

        def get(id)
          data = service.get_repository_export(id_value(id))
          new_from_response(data)
        end
      end
    end
  end
end
