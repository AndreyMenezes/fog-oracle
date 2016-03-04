require 'fog/oracle/models/collection'
require 'fog/oracle/models/compute/statistics_management_attributes'

module Fog
  module Compute
    class Oracle
      class StatisticsManagementAttributeses < Fog::Oracle::Collection
        model Fog::Compute::Oracle::StatisticsManagementAttributes

        def all()
          data = service.list_statistics_management_attributeses()
          load_response(data)
        end

        def get(id)
          data = service.get_statistics_management_attributes(id_value(id))
          new_from_response(data)
        end
      end
    end
  end
end
