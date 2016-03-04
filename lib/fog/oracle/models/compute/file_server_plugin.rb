require 'fog/oracle/models/compute/base_object'

module Fog
  module Compute
    class Oracle
      class FileServerPlugin < BaseObject
        attribute :backing_device_type, :type => :string # BackingDeviceType
        attribute :cluster_required, :type => :boolean
        attribute :extra_info_help_text, :type => :string
        attribute :generic_plugin, :type => :boolean
        attribute :plugin_description, :type => :string
        attribute :plugin_name, :type => :string
        attribute :plugin_vendor, :type => :string
        attribute :plugin_version, :type => :string
        has_many :storage_ability_records, :storage_ability_records
        has_many_identities :file_server_ids, :file_servers, :all_name => :file_servers
        has_many_identities :server_ids, :servers, :all_name => :servers
      end
    end
  end
end
