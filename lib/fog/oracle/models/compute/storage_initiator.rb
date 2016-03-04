require 'fog/oracle/models/compute/base_object'

module Fog
  module Compute
    class Oracle
      class StorageInitiator < BaseObject
        attribute :fibre_channel_fabric_name, :type => :string
        attribute :fibre_channel_node_name, :type => :string
        attribute :fibre_channel_port_id, :type => :string
        attribute :fibre_channel_port_speed, :type => :string
        attribute :fibre_channel_port_type, :type => :string
        attribute :fibre_channel_supported_speeds, :type => :string
        attribute :initiator_type, :type => :string # StorageType
        has_many_identities :access_group_ids, :access_groups, :all_name => :access_groups
        has_many_identities :storage_path_ids, :storage_paths, :all_name => :storage_paths
        has_one_identity :server_id, :servers, :details_name => :server
      end
    end
  end
end
