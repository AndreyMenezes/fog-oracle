require 'fog/oracle/models/collection'
require 'fog/oracle/models/compute/cpu'

module Fog
  module Compute
    class Oracle
      class Cpus < Fog::Oracle::Collection
        model Fog::Compute::Oracle::Cpu

        def all()
          data = service.list_cpus()
          load_response(data)
        end

        def get(id)
          data = service.get_cpu(id_value(id))
          new_from_response(data)
        end
      end
    end
  end
end
