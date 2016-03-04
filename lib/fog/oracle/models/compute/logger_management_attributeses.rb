require 'fog/oracle/models/collection'
require 'fog/oracle/models/compute/logger_management_attributes'

module Fog
  module Compute
    class Oracle
      class LoggerManagementAttributeses < Fog::Oracle::Collection
        model Fog::Compute::Oracle::LoggerManagementAttributes

        def all()
          data = service.list_logger_management_attributeses()
          load_response(data)
        end

        def get(id)
          data = service.get_logger_management_attributes(id_value(id))
          new_from_response(data)
        end
      end
    end
  end
end
