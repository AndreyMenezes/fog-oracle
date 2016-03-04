require 'fog/oracle/models/collection'
require 'fog/oracle/models/compute/ipaddress'

module Fog
  module Compute
    class Oracle
      class IPAddresses < Fog::Oracle::Collection
        model Fog::Compute::Oracle::IPAddress

        def all()
          data = service.list_ipaddresses()
          load_response(data)
        end

        def get(id)
          data = service.get_ipaddress(id_value(id))
          new_from_response(data)
        end
      end
    end
  end
end
