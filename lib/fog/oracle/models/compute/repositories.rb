require 'fog/oracle/models/collection'
require 'fog/oracle/models/compute/repository'

module Fog
  module Compute
    class Oracle
      class Repositories < Fog::Oracle::Collection
        model Fog::Compute::Oracle::Repository

        def all()
          data = service.list_repositories()
          load_response(data)
        end

        def get(id)
          data = service.get_repository(id_value(id))
          new_from_response(data)
        end
      end
    end
  end
end
