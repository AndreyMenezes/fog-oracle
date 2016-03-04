require 'fog/oracle/models/compute/base_object'

module Fog
  module Compute
    class Oracle
      class VlanInterface < BaseObject
        attribute :interface_name, :type => :string
        attribute :mac_address, :type => :string
        attribute :mtu, :type => :integer
        attribute :vlan_id, :type => :integer
        has_many :addresses, :ipaddresses
        has_one_identity :network_id, :networks, :details_name => :network
        has_one_identity :port_id, :ethernet_ports, :details_name => :port
        has_one_identity :virtual_switch_id, :virtual_switches, :details_name => :virtual_switch
      end
    end
  end
end
