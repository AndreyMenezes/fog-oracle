require 'fog/oracle/models/compute/base_object'

module Fog
  module Compute
    class Oracle
      class StorageArray < BaseObject
        attribute :admin_hostname, :type => :string
        attribute :admin_password, :type => :string
        attribute :admin_username, :type => :string
        attribute :allocated_size, :type => :integer
        attribute :default_array, :type => :boolean
        attribute :extra_information, :type => :string
        attribute :free_size, :type => :integer
        attribute :known_storage_names, :type => :array # of :string
        attribute :status, :type => :string
        attribute :storage_description, :type => :string
        attribute :storage_name, :type => :string
        attribute :storage_type, :type => :string # StorageType
        attribute :total_size, :type => :integer
        attribute :use_chap, :type => :boolean
        attribute :used_size, :type => :integer
        attribute :validated, :type => :boolean
        has_many :access_hosts, :access_hosts
        has_many :qos_values, :qos_values
        has_many_identities :access_group_ids, :access_groups, :all_name => :access_groups
        has_many_identities :admin_server_ids, :servers, :all_name => :admin_servers
        has_many_identities :volume_group_ids, :volume_groups, :all_name => :volume_groups
        has_many_identities :zone_ids, :zones, :all_name => :zones
        has_one_identity :server_id, :servers, :details_name => :server
        has_one_identity :storage_array_plugin_id, :storage_array_plugins, :details_name => :storage_array_plugin
      end
    end
  end
end
