require 'fog/oracle/models/collection'
require 'fog/oracle/models/compute/session_properties'

module Fog
  module Compute
    class Oracle
      class SessionPropertieses < Fog::Oracle::Collection
        model Fog::Compute::Oracle::SessionProperties

        def all()
          data = service.list_session_propertieses()
          load_response(data)
        end

        def get(id)
          data = service.get_session_properties(id_value(id))
          new_from_response(data)
        end
      end
    end
  end
end
