require 'fog/oracle/models/collection'
require 'fog/oracle/models/compute/unselected_object_details'

module Fog
  module Compute
    class Oracle
      class UnselectedObjectDetailses < Fog::Oracle::Collection
        model Fog::Compute::Oracle::UnselectedObjectDetails

        def all()
          data = service.list_unselected_object_detailses()
          load_response(data)
        end

        def get(id)
          data = service.get_unselected_object_details(id_value(id))
          new_from_response(data)
        end
      end
    end
  end
end
