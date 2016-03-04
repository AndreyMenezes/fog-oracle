require 'fog/oracle/models/collection'
require 'fog/oracle/models/compute/job_error'

module Fog
  module Compute
    class Oracle
      class JobErrors < Fog::Oracle::Collection
        model Fog::Compute::Oracle::JobError

        def all()
          data = service.list_job_errors()
          load_response(data)
        end

        def get(id)
          data = service.get_job_error(id_value(id))
          new_from_response(data)
        end
      end
    end
  end
end
