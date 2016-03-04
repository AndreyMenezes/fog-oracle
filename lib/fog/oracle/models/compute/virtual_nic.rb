require 'fog/oracle/models/compute/base_object'

module Fog
  module Compute
    class Oracle
      class VirtualNic < BaseObject
        attribute :interface_name, :type => :string
        attribute :mac_address, :type => :string
        has_many :ip_addresses, :ipaddresses
        has_one_identity :network_id, :networks, :details_name => :network
        has_one_identity :vm_id, :vms, :details_name => :vm
      end
    end
  end
end
