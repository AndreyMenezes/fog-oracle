require 'fog/oracle/models/collection'
require 'fog/oracle/models/compute/cpu_compatibility_group'

module Fog
  module Compute
    class Oracle
      class CpuCompatibilityGroups < Fog::Oracle::Collection
        model Fog::Compute::Oracle::CpuCompatibilityGroup

        def all()
          data = service.list_cpu_compatibility_groups()
          load_response(data)
        end

        def get(id)
          data = service.get_cpu_compatibility_group(id_value(id))
          new_from_response(data)
        end
      end
    end
  end
end
