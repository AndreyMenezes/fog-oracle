require 'fog/oracle/models/collection'
require 'fog/oracle/models/compute/periodic_task'

module Fog
  module Compute
    class Oracle
      class PeriodicTasks < Fog::Oracle::Collection
        model Fog::Compute::Oracle::PeriodicTask

        def all()
          data = service.list_periodic_tasks()
          load_response(data)
        end

        def get(id)
          data = service.get_periodic_task(id_value(id))
          new_from_response(data)
        end
      end
    end
  end
end
