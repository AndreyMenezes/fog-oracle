require 'fog/oracle/models/compute/base_object'

module Fog
  module Compute
    class Oracle
      class FileServer < BaseObject
        attribute :access_host, :type => :string
        attribute :file_server_type, :type => :string # FileServerType
        attribute :storage_description, :type => :string
        attribute :uniform_exports, :type => :boolean
        has_many_identities :access_group_ids, :access_groups, :all_name => :access_groups
        has_many_identities :admin_server_ids, :servers, :all_name => :admin_servers
        has_many_identities :file_system_ids, :file_systems, :all_name => :file_systems
        has_many_identities :refresh_server_ids, :servers, :all_name => :refresh_servers
        has_many_identities :zone_ids, :zones, :all_name => :zones
        has_one_identity :file_server_plugin_id, :file_server_plugins, :details_name => :file_server_plugin
        has_one_identity :server_id, :servers, :details_name => :server
      end
    end
  end
end
