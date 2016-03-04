require 'fog/oracle/models/collection'
require 'fog/oracle/models/compute/business_selection'

module Fog
  module Compute
    class Oracle
      class BusinessSelections < Fog::Oracle::Collection
        model Fog::Compute::Oracle::BusinessSelection

        def all()
          data = service.list_business_selections()
          load_response(data)
        end

        def get(id)
          data = service.get_business_selection(id_value(id))
          new_from_response(data)
        end
      end
    end
  end
end
