require 'fog/oracle/models/collection'
require 'fog/oracle/models/compute/server_update_configuration'

module Fog
  module Compute
    class Oracle
      class ServerUpdateConfigurations < Fog::Oracle::Collection
        model Fog::Compute::Oracle::ServerUpdateConfiguration

        def all()
          data = service.list_server_update_configurations()
          load_response(data)
        end

        def get(id)
          data = service.get_server_update_configuration(id_value(id))
          new_from_response(data)
        end
      end
    end
  end
end
