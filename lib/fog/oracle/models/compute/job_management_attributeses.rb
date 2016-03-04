require 'fog/oracle/models/collection'
require 'fog/oracle/models/compute/job_management_attributes'

module Fog
  module Compute
    class Oracle
      class JobManagementAttributeses < Fog::Oracle::Collection
        model Fog::Compute::Oracle::JobManagementAttributes

        def all()
          data = service.list_job_management_attributeses()
          load_response(data)
        end

        def get(id)
          data = service.get_job_management_attributes(id_value(id))
          new_from_response(data)
        end
      end
    end
  end
end
