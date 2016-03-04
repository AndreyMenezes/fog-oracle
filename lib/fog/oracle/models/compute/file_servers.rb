require 'fog/oracle/models/collection'
require 'fog/oracle/models/compute/file_server'

module Fog
  module Compute
    class Oracle
      class FileServers < Fog::Oracle::Collection
        model Fog::Compute::Oracle::FileServer

        def all()
          data = service.list_file_servers()
          load_response(data)
        end

        def get(id)
          data = service.get_file_server(id_value(id))
          new_from_response(data)
        end
      end
    end
  end
end
