require 'fog/oracle/models/collection'
require 'fog/oracle/models/compute/hypervisor'

module Fog
  module Compute
    class Oracle
      class Hypervisors < Fog::Oracle::Collection
        model Fog::Compute::Oracle::Hypervisor

        def all()
          data = service.list_hypervisors()
          load_response(data)
        end

        def get(id)
          data = service.get_hypervisor(id_value(id))
          new_from_response(data)
        end
      end
    end
  end
end
