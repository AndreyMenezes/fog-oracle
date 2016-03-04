require 'fog/oracle/models/collection'
require 'fog/oracle/models/compute/affinity_group'

module Fog
  module Compute
    class Oracle
      class AffinityGroups < Fog::Oracle::Collection
        model Fog::Compute::Oracle::AffinityGroup

        def all()
          data = service.list_affinity_groups()
          load_response(data)
        end

        def get(id)
          data = service.get_affinity_group(id_value(id))
          new_from_response(data)
        end
      end
    end
  end
end
