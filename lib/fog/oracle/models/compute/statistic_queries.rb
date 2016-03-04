require 'fog/oracle/models/collection'
require 'fog/oracle/models/compute/statistic_query'

module Fog
  module Compute
    class Oracle
      class StatisticQueries < Fog::Oracle::Collection
        model Fog::Compute::Oracle::StatisticQuery

        def all()
          data = service.list_statistic_queries()
          load_response(data)
        end

        def get(id)
          data = service.get_statistic_query(id_value(id))
          new_from_response(data)
        end
      end
    end
  end
end
