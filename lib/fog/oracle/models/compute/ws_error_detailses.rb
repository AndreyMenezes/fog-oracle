require 'fog/oracle/models/collection'
require 'fog/oracle/models/compute/ws_error_details'

module Fog
  module Compute
    class Oracle
      class WsErrorDetailses < Fog::Oracle::Collection
        model Fog::Compute::Oracle::WsErrorDetails

        def all()
          data = service.list_ws_error_detailses()
          load_response(data)
        end

        def get(id)
          data = service.get_ws_error_details(id_value(id))
          new_from_response(data)
        end
      end
    end
  end
end
