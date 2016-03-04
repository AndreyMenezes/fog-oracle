require 'fog/oracle/models/compute/base_object'

module Fog
  module Compute
    class Oracle
      class FileSystem < BaseObject
        attribute :free_size, :type => :integer
        attribute :path, :type => :string
        attribute :refreshed, :type => :boolean
        attribute :shared, :type => :boolean
        attribute :size, :type => :integer
        has_many_identities :file_server_ids, :file_servers, :all_name => :file_servers
        has_many_identities :file_system_mount_ids, :file_system_mounts, :all_name => :file_system_mounts
        has_many_identities :repository_ids, :repositories, :all_name => :repositories
        has_one_identity :access_group_id, :access_groups, :details_name => :access_group
        has_one_identity :cluster_heartbeat_device_id, :cluster_heartbeat_devices, :details_name => :cluster_heartbeat_device
        has_one_identity :cluster_id, :clusters, :details_name => :cluster
        has_one_identity :storage_element_id, :storage_elements, :details_name => :storage_element
      end
    end
  end
end
