require 'fog/oracle/models/compute/base_object'

module Fog
  module Compute
    class Oracle
      class StorageElement < BaseObject
        attribute :device_names, :type => :array # of :string
        attribute :extra_information, :type => :string
        attribute :page83_id, :type => :string
        attribute :qos, :type => :string
        attribute :server_reserved, :type => :boolean
        attribute :shareable, :type => :boolean
        attribute :size, :type => :integer
        attribute :state, :type => :string # StorageElementState
        attribute :status, :type => :string
        attribute :storage_target_names, :type => :array # of :string
        attribute :thin_provision, :type => :boolean
        attribute :type, :type => :string # StorageElementType
        attribute :user_friendly_name, :type => :string
        attribute :vendor, :type => :string
        has_many_identities :file_system_ids, :file_systems, :all_name => :file_systems
        has_many_identities :reserving_server_ids, :servers, :all_name => :reserving_servers
        has_many_identities :storage_path_ids, :storage_paths, :all_name => :storage_paths
        has_many_identities :vm_disk_mapping_ids, :vm_disk_mappings, :all_name => :vm_disk_mappings
        has_one_identity :cluster_heartbeat_device_id, :cluster_heartbeat_devices, :details_name => :cluster_heartbeat_device
        has_one_identity :volume_group_id, :volume_groups, :details_name => :volume_group
      end
    end
  end
end
