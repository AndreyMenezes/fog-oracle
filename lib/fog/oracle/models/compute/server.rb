require 'fog/oracle/models/compute/base_object'

module Fog
  module Compute
    class Oracle
      class Server < BaseObject
        attribute :agent_login, :type => :string
        attribute :bios_release_date, :type => :string
        attribute :bios_vendor, :type => :string
        attribute :bios_version, :type => :string
        attribute :cores_per_processor_socket, :type => :integer
        attribute :enabled_processor_cores, :type => :integer
        attribute :hostname, :type => :string
        attribute :ip_address, :type => :string
        attribute :is_protected, :type => :boolean
        attribute :maintenance_mode, :type => :boolean
        attribute :manager_uuid, :type => :string
        attribute :manufacturer, :type => :string
        attribute :memory, :type => :integer
        attribute :no_execute_flag, :type => :boolean
        attribute :ntp_servers, :type => :array # of :string
        attribute :ovm_version, :type => :string
        attribute :populated_processor_sockets, :type => :integer
        attribute :processor_speed, :type => :float
        attribute :processor_type, :type => :string # ProcessorType
        attribute :product_name, :type => :string
        attribute :reboot_on_upgrade, :type => :boolean
        attribute :serial_number, :type => :string
        attribute :server_roles, :type => :array # of ServerRole
        attribute :server_run_state, :type => :string # ServerRunState
        attribute :server_up_to_date, :type => :boolean
        attribute :statistic_interval, :type => :integer
        attribute :threads_per_core, :type => :integer
        attribute :total_processor_cores, :type => :integer
        attribute :usable_memory, :type => :integer
        has_many_identities :access_group_ids, :access_groups, :all_name => :access_groups
        has_many_identities :control_domain_ids, :control_domains, :all_name => :control_domains
        has_many_identities :cpu_ids, :cpus, :all_name => :cpus
        has_many_identities :ethernet_port_ids, :ethernet_ports, :all_name => :ethernet_ports
        has_many_identities :file_server_plugin_ids, :file_server_plugins, :all_name => :file_server_plugins
        has_many_identities :file_system_mount_ids, :file_system_mounts, :all_name => :file_system_mounts
        has_many_identities :network_ids, :networks, :all_name => :networks
        has_many_identities :refresh_file_server_ids, :file_servers, :all_name => :refresh_file_servers
        has_many_identities :repository_export_ids, :repository_exports, :all_name => :repository_exports
        has_many_identities :storage_array_plugin_ids, :storage_array_plugins, :all_name => :storage_array_plugins
        has_many_identities :storage_element_ids, :storage_elements, :all_name => :storage_elements
        has_many_identities :storage_initiator_ids, :storage_initiators, :all_name => :storage_initiators
        has_many_identities :vm_ids, :vms, :all_name => :vms
        has_one :hypervisor, :hypervisors
        has_one :server_abilities, :server_abilitieses
        has_one_identity :cluster_id, :clusters, :details_name => :cluster
        has_one_identity :cpu_compatibility_group_id, :cpu_compatibility_groups, :details_name => :cpu_compatibility_group
        has_one_identity :local_file_server_id, :file_servers, :details_name => :local_file_server
        has_one_identity :local_storage_array_id, :storage_arrays, :details_name => :local_storage_array
        has_one_identity :server_controller_id, :server_controllers, :details_name => :server_controller
        has_one_identity :server_pool_id, :server_pools, :details_name => :server_pool
      end
    end
  end
end
