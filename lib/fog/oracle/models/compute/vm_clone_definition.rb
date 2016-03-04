require 'fog/oracle/models/compute/base_object'

module Fog
  module Compute
    class Oracle
      class VmCloneDefinition < BaseObject
        has_many_identities :vm_clone_network_mapping_ids, :vm_clone_network_mappings, :all_name => :vm_clone_network_mappings
        has_many_identities :vm_clone_storage_mapping_ids, :vm_clone_storage_mappings, :all_name => :vm_clone_storage_mappings
        has_one_identity :vm_id, :vms, :details_name => :vm
      end
    end
  end
end
