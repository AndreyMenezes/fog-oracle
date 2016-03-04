require 'fog/oracle/models/collection'
require 'fog/oracle/models/compute/server_abilities'

module Fog
  module Compute
    class Oracle
      class ServerAbilitieses < Fog::Oracle::Collection
        model Fog::Compute::Oracle::ServerAbilities

        def all()
          data = service.list_server_abilitieses()
          load_response(data)
        end

        def get(id)
          data = service.get_server_abilities(id_value(id))
          new_from_response(data)
        end
      end
    end
  end
end
