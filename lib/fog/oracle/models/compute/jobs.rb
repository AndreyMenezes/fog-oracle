require 'fog/oracle/models/collection'
require 'fog/oracle/models/compute/job'

module Fog
  module Compute
    class Oracle
      class Jobs < Fog::Oracle::Collection
        model Fog::Compute::Oracle::Job

        def all()
          data = service.list_jobs()
          load_response(data)
        end

        def get(id)
          data = service.get_job(id_value(id))
          new_from_response(data)
        end
      end
    end
  end
end
