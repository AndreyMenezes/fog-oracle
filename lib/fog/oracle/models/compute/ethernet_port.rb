require 'fog/oracle/models/compute/base_object'

module Fog
  module Compute
    class Oracle
      class EthernetPort < BaseObject
        attribute :bond_mode, :type => :string # BondMode
        attribute :interface_name, :type => :string
        attribute :mac_address, :type => :string
        attribute :mtu, :type => :integer
        attribute :port_state, :type => :string # PortState
        attribute :port_type, :type => :string # PortType
        has_many :ipaddresses, :ipaddresses
        has_many_identities :physical_port_ids, :ethernet_ports, :all_name => :physical_ports
        has_many_identities :vlan_interface_ids, :vlan_interfaces, :all_name => :vlan_interfaces
        has_one_identity :bond_port_id, :ethernet_ports, :details_name => :bond_port
        has_one_identity :network_id, :networks, :details_name => :network
        has_one_identity :server_id, :servers, :details_name => :server
        has_one_identity :virtual_switch_id, :virtual_switches, :details_name => :virtual_switch
      end
    end
  end
end
