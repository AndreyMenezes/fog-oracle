require 'fog/oracle/models/compute/base_object'

module Fog
  module Compute
    class Oracle
      class StorageTarget < BaseObject
        attribute :fibre_channel_model, :type => :string
        attribute :fibre_channel_node_name, :type => :string
        attribute :fibre_channel_port_id, :type => :string
        attribute :fibre_channel_port_timeout, :type => :integer
        attribute :fibre_channel_queue_depth, :type => :integer
        attribute :fibre_channel_queue_type, :type => :string
        attribute :fibre_channel_retries, :type => :integer
        attribute :fibre_channel_scsi_level, :type => :integer
        attribute :fibre_channel_vendor, :type => :string
        attribute :iscsi_ipaddresses, :type => :array # of :string
        attribute :iscsi_target_name, :type => :string
        attribute :storage_target_type, :type => :string # StorageType
        has_many_identities :storage_path_ids, :storage_paths, :all_name => :storage_paths
      end
    end
  end
end
