require 'fog/oracle/models/collection'
require 'fog/oracle/models/compute/event'

module Fog
  module Compute
    class Oracle
      class Events < Fog::Oracle::Collection
        model Fog::Compute::Oracle::Event

        def all()
          data = service.list_events()
          load_response(data)
        end

        def get(id)
          data = service.get_event(id_value(id))
          new_from_response(data)
        end
      end
    end
  end
end
