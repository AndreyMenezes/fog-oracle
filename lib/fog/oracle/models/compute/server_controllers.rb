require 'fog/oracle/models/collection'
require 'fog/oracle/models/compute/server_controller'

module Fog
  module Compute
    class Oracle
      class ServerControllers < Fog::Oracle::Collection
        model Fog::Compute::Oracle::ServerController

        def all()
          data = service.list_server_controllers()
          load_response(data)
        end

        def get(id)
          data = service.get_server_controller(id_value(id))
          new_from_response(data)
        end
      end
    end
  end
end
