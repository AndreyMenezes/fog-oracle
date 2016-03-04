require 'fog/oracle/models/collection'
require 'fog/oracle/models/compute/file_system_mount'

module Fog
  module Compute
    class Oracle
      class FileSystemMounts < Fog::Oracle::Collection
        model Fog::Compute::Oracle::FileSystemMount

        def all()
          data = service.list_file_system_mounts()
          load_response(data)
        end

        def get(id)
          data = service.get_file_system_mount(id_value(id))
          new_from_response(data)
        end
      end
    end
  end
end
