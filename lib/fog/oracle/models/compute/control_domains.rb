require 'fog/oracle/models/collection'
require 'fog/oracle/models/compute/control_domain'

module Fog
  module Compute
    class Oracle
      class ControlDomains < Fog::Oracle::Collection
        model Fog::Compute::Oracle::ControlDomain

        def all()
          data = service.list_control_domains()
          load_response(data)
        end

        def get(id)
          data = service.get_control_domain(id_value(id))
          new_from_response(data)
        end
      end
    end
  end
end
