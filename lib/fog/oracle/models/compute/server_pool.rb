require 'fog/oracle/models/compute/base_object'

module Fog
  module Compute
    class Oracle
      class ServerPool < BaseObject
        attribute :keymap, :type => :string
        attribute :secure_vm_migrate, :type => :boolean
        attribute :virtual_ip, :type => :string
        attribute :vm_start_policy, :type => :string # VmStartPolicy
        has_many_identities :affinity_group_ids, :affinity_groups, :all_name => :affinity_groups
        has_many_identities :server_ids, :servers, :all_name => :servers
        has_many_identities :unassigned_vm_ids, :vms, :all_name => :unassigned_vms
        has_many_identities :vm_ids, :vms, :all_name => :vms
        has_one_identity :cluster_id, :clusters, :details_name => :cluster
        has_one_identity :master_server_id, :servers, :details_name => :master_server
        has_one_identity :server_pool_policy_id, :server_pool_policies, :details_name => :server_pool_policy
        has_one_identity :server_update_configuration_id, :server_update_configurations, :details_name => :server_update_configuration
        has_one_identity :zone_id, :zones, :details_name => :zone
      end
    end
  end
end
