require 'fog/oracle/models/compute/base_object'

module Fog
  module Compute
    class Oracle
      class Network < BaseObject
        attribute :mtu, :type => :integer
        attribute :roles, :type => :array # of Role
        attribute :server_local, :type => :boolean
        has_many_identities :ethernet_port_ids, :ethernet_ports, :all_name => :ethernet_ports
        has_many_identities :virtual_nic_ids, :virtual_nics, :all_name => :virtual_nics
        has_many_identities :vlan_interface_ids, :vlan_interfaces, :all_name => :vlan_interfaces
        has_one_identity :server_id, :servers, :details_name => :server
      end
    end
  end
end
