require 'fog/oracle/models/collection'
require 'fog/oracle/models/compute/zone'

module Fog
  module Compute
    class Oracle
      class Zones < Fog::Oracle::Collection
        model Fog::Compute::Oracle::Zone

        def all()
          data = service.list_zones()
          load_response(data)
        end

        def get(id)
          data = service.get_zone(id_value(id))
          new_from_response(data)
        end
      end
    end
  end
end
