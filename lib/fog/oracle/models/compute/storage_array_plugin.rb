require 'fog/oracle/models/compute/base_object'

module Fog
  module Compute
    class Oracle
      class StorageArrayPlugin < BaseObject
        attribute :cluster_required, :type => :boolean
        attribute :generic_plugin, :type => :boolean
        attribute :plugin_description, :type => :string
        attribute :plugin_max_access_group_entries, :type => :integer
        attribute :plugin_name, :type => :string
        attribute :plugin_vendor, :type => :string
        attribute :plugin_version, :type => :string
        attribute :single_access_host_only, :type => :boolean
        attribute :storage_array_extra_info_help, :type => :string
        attribute :storage_element_extra_info_help, :type => :string
        attribute :storage_types, :type => :array # of StorageType
        has_many :storage_ability_records, :storage_ability_records
        has_many_identities :server_ids, :servers, :all_name => :servers
        has_many_identities :storage_array_ids, :storage_arrays, :all_name => :storage_arrays
      end
    end
  end
end
