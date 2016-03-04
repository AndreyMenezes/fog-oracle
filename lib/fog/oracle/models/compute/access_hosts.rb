require 'fog/oracle/models/collection'
require 'fog/oracle/models/compute/access_host'

module Fog
  module Compute
    class Oracle
      class AccessHosts < Fog::Oracle::Collection
        model Fog::Compute::Oracle::AccessHost

        def all()
          data = service.list_access_hosts()
          load_response(data)
        end

        def get(id)
          data = service.get_access_host(id_value(id))
          new_from_response(data)
        end
      end
    end
  end
end
