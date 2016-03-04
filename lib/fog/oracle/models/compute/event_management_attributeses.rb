require 'fog/oracle/models/collection'
require 'fog/oracle/models/compute/event_management_attributes'

module Fog
  module Compute
    class Oracle
      class EventManagementAttributeses < Fog::Oracle::Collection
        model Fog::Compute::Oracle::EventManagementAttributes

        def all()
          data = service.list_event_management_attributeses()
          load_response(data)
        end

        def get(id)
          data = service.get_event_management_attributes(id_value(id))
          new_from_response(data)
        end
      end
    end
  end
end
