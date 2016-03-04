require 'fog/oracle/models/model'

module Fog
  module Compute
    class Oracle
      class ServerAbilities < Fog::Oracle::Model
        attribute :all_vm_cpu_over_subscribe, :type => :boolean
        attribute :bond_mode_active_backup, :type => :boolean
        attribute :bond_mode_adaptive_load_balancing, :type => :boolean
        attribute :bond_mode_link_aggregation, :type => :boolean
        attribute :cluster, :type => :boolean
        attribute :cluster_fs_on_physical_disk, :type => :boolean
        attribute :fibre_channel, :type => :boolean
        attribute :high_availability, :type => :boolean
        attribute :hvm_max_vnics, :type => :integer
        attribute :iscsi, :type => :boolean
        attribute :local_storage_element, :type => :boolean
        attribute :migration_setup, :type => :boolean
        attribute :mtu_configuration, :type => :boolean
        attribute :nfs, :type => :boolean
        attribute :per_vm_cpu_over_subscribe, :type => :boolean
        attribute :power_on_wol, :type => :boolean
        attribute :repository_on_local_disk, :type => :boolean
        attribute :repository_on_shared_disk, :type => :boolean
        attribute :serial_console, :type => :boolean
        attribute :server_package_update, :type => :boolean
        attribute :vm_empty_cdrom, :type => :boolean
        attribute :vm_memory_alignment, :type => :integer
        attribute :vm_suspend, :type => :boolean
        attribute :vnc_console, :type => :boolean
      end
    end
  end
end
