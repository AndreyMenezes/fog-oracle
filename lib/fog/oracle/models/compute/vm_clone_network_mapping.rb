require 'fog/oracle/models/compute/base_object'

module Fog
  module Compute
    class Oracle
      class VmCloneNetworkMapping < BaseObject
        has_one_identity :network_id, :networks, :details_name => :network
        has_one_identity :virtual_nic_id, :virtual_nics, :details_name => :virtual_nic
        has_one_identity :vm_clone_definition_id, :vm_clone_definitions, :details_name => :vm_clone_definition
      end
    end
  end
end
