require 'fog/oracle/models/collection'
require 'fog/oracle/models/compute/ws_exception'

module Fog
  module Compute
    class Oracle
      class WsExceptions < Fog::Oracle::Collection
        model Fog::Compute::Oracle::WsException

        def all()
          data = service.list_ws_exceptions()
          load_response(data)
        end

        def get(id)
          data = service.get_ws_exception(id_value(id))
          new_from_response(data)
        end
      end
    end
  end
end
