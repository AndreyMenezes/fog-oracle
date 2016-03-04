require 'fog/oracle/models/collection'
require 'fog/oracle/models/compute/assembly'

module Fog
  module Compute
    class Oracle
      class Assemblies < Fog::Oracle::Collection
        model Fog::Compute::Oracle::Assembly

        def all()
          data = service.list_assemblies()
          load_response(data)
        end

        def get(id)
          data = service.get_assembly(id_value(id))
          new_from_response(data)
        end
      end
    end
  end
end
