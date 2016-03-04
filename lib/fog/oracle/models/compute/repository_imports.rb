require 'fog/oracle/models/collection'
require 'fog/oracle/models/compute/repository_import'

module Fog
  module Compute
    class Oracle
      class RepositoryImports < Fog::Oracle::Collection
        model Fog::Compute::Oracle::RepositoryImport

        def all()
          data = service.list_repository_imports()
          load_response(data)
        end

        def get(id)
          data = service.get_repository_import(id_value(id))
          new_from_response(data)
        end
      end
    end
  end
end
