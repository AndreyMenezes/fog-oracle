require 'fog/oracle/models/collection'
require 'fog/oracle/models/compute/file_server_plugin'

module Fog
  module Compute
    class Oracle
      class FileServerPlugins < Fog::Oracle::Collection
        model Fog::Compute::Oracle::FileServerPlugin

        def all()
          data = service.list_file_server_plugins()
          load_response(data)
        end

        def get(id)
          data = service.get_file_server_plugin(id_value(id))
          new_from_response(data)
        end
      end
    end
  end
end
