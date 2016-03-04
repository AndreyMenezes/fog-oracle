require 'fog/oracle/models/collection'
require 'fog/oracle/models/compute/event_query'

module Fog
  module Compute
    class Oracle
      class EventQueries < Fog::Oracle::Collection
        model Fog::Compute::Oracle::EventQuery

        def all()
          data = service.list_event_queries()
          load_response(data)
        end

        def get(id)
          data = service.get_event_query(id_value(id))
          new_from_response(data)
        end
      end
    end
  end
end
