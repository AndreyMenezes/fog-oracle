require 'fog/oracle/models/collection'
require 'fog/oracle/models/compute/statistic'

module Fog
  module Compute
    class Oracle
      class Statistics < Fog::Oracle::Collection
        model Fog::Compute::Oracle::Statistic

        def all()
          data = service.list_statistics()
          load_response(data)
        end

        def get(id)
          data = service.get_statistic(id_value(id))
          new_from_response(data)
        end
      end
    end
  end
end
