require 'fog/oracle/models/collection'
require 'fog/oracle/models/compute/file_system'

module Fog
  module Compute
    class Oracle
      class FileSystems < Fog::Oracle::Collection
        model Fog::Compute::Oracle::FileSystem

        def all()
          data = service.list_file_systems()
          load_response(data)
        end

        def get(id)
          data = service.get_file_system(id_value(id))
          new_from_response(data)
        end
      end
    end
  end
end
