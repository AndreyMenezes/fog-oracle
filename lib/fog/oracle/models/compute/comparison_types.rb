require 'fog/oracle/models/collection'
require 'fog/oracle/models/compute/comparison_type'

module Fog
  module Compute
    class Oracle
      class ComparisonTypes < Fog::Oracle::Collection
        model Fog::Compute::Oracle::ComparisonType

        def all()
          data = service.list_comparison_types()
          load_response(data)
        end

        def get(id)
          data = service.get_comparison_type(id_value(id))
          new_from_response(data)
        end
      end
    end
  end
end
