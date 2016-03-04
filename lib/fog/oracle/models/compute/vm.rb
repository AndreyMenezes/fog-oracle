require 'fog/oracle/models/compute/base_object'

module Fog
  module Compute
    class Oracle
      class Vm < BaseObject
        attribute :arch, :type => :string
        attribute :boot_order, :type => :array # of VmBootType
        attribute :cpu_count, :type => :integer
        attribute :cpu_count_limit, :type => :integer
        attribute :cpu_priority, :type => :integer
        attribute :cpu_utilization_cap, :type => :integer
        attribute :current_cpu_count, :type => :integer
        attribute :current_domain_id, :type => :integer
        attribute :current_memory, :type => :integer
        attribute :disk_limit, :type => :integer
        attribute :guest_driver_version, :type => :string
        attribute :high_availability, :type => :boolean
        attribute :huge_pages_enabled, :type => :boolean
        attribute :kernel_version, :type => :string
        attribute :keymap_name, :type => :string
        attribute :memory, :type => :integer
        attribute :memory_limit, :type => :integer
        attribute :network_install_path, :type => :string
        attribute :origin, :type => :string
        attribute :os_type, :type => :string
        attribute :os_version, :type => :string
        attribute :restart_action_crash, :type => :string # VmRestartAction
        attribute :restart_action_power_off, :type => :string # VmRestartAction
        attribute :restart_action_restart, :type => :string # VmRestartAction
        attribute :ssl_tty_port, :type => :string
        attribute :ssl_vnc_port, :type => :string
        attribute :vm_api_version, :type => :string
        attribute :vm_domain_type, :type => :string # VmDomainType
        attribute :vm_mouse_type, :type => :string # VmMouseType
        attribute :vm_run_state, :type => :string # VmRunState
        attribute :vm_start_policy, :type => :string # VmStartPolicy
        has_many_identities :affinity_group_ids, :affinity_groups, :all_name => :affinity_groups
        has_many_identities :virtual_nic_ids, :virtual_nics, :all_name => :virtual_nics
        has_many_identities :vm_clone_definition_ids, :vm_clone_definitions, :all_name => :vm_clone_definitions
        has_many_identities :vm_disk_mapping_ids, :vm_disk_mappings, :all_name => :vm_disk_mappings
        has_one_identity :repository_id, :repositories, :details_name => :repository
        has_one_identity :server_id, :servers, :details_name => :server
        has_one_identity :server_pool_id, :server_pools, :details_name => :server_pool
      end
    end
  end
end
