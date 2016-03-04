require 'fog/oracle/models/compute/base_object'

module Fog
  module Compute
    class Oracle
      class Repository < BaseObject
        attribute :manager_uuid, :type => :string
        attribute :refreshed, :type => :boolean
        attribute :share_path, :type => :string
        has_many_identities :assembly_ids, :assemblies, :all_name => :assemblies
        has_many_identities :presented_server_ids, :servers, :all_name => :presented_servers
        has_many_identities :virtual_disk_ids, :virtual_disks, :all_name => :virtual_disks
        has_many_identities :vm_ids, :vms, :all_name => :vms
        has_one_identity :file_system_id, :file_systems, :details_name => :file_system
      end
    end
  end
end
