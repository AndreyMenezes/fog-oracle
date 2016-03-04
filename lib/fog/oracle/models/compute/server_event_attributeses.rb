require 'fog/oracle/models/collection'
require 'fog/oracle/models/compute/server_event_attributes'

module Fog
  module Compute
    class Oracle
      class ServerEventAttributeses < Fog::Oracle::Collection
        model Fog::Compute::Oracle::ServerEventAttributes

        def all()
          data = service.list_server_event_attributeses()
          load_response(data)
        end

        def get(id)
          data = service.get_server_event_attributes(id_value(id))
          new_from_response(data)
        end
      end
    end
  end
end
