require 'fog/oracle/models/compute/base_object'

module Fog
  module Compute
    class Oracle
      class ClusterHeartbeatDevice < BaseObject
        attribute :manager_uuid, :type => :string
        attribute :storage_type, :type => :string # ClusterHeartbeatStorageType
        has_one_identity :cluster_id, :clusters, :details_name => :cluster
        has_one_identity :cluster_storage_fs_id, :cluster_storage_fses, :details_name => :cluster_storage_fs
        has_one_identity :network_file_system_id, :file_systems, :details_name => :network_file_system
        has_one_identity :storage_element_id, :storage_elements, :details_name => :storage_element
      end
    end
  end
end
