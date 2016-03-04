require 'fog/oracle/models/collection'
require 'fog/oracle/models/compute/ethernet_port'

module Fog
  module Compute
    class Oracle
      class EthernetPorts < Fog::Oracle::Collection
        model Fog::Compute::Oracle::EthernetPort

        def all()
          data = service.list_ethernet_ports()
          load_response(data)
        end

        def get(id)
          data = service.get_ethernet_port(id_value(id))
          new_from_response(data)
        end
      end
    end
  end
end
