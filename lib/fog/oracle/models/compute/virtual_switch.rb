require 'fog/oracle/models/compute/base_object'

module Fog
  module Compute
    class Oracle
      class VirtualSwitch < BaseObject
        has_one_identity :ethernet_port_id, :ethernet_ports, :details_name => :ethernet_port
        has_one_identity :network_id, :networks, :details_name => :network
        has_one_identity :vlan_interface_id, :vlan_interfaces, :details_name => :vlan_interface
      end
    end
  end
end
