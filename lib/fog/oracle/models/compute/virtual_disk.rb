require 'fog/oracle/models/compute/base_object'

module Fog
  module Compute
    class Oracle
      class VirtualDisk < BaseObject
        attribute :disk_type, :type => :string # DiskType
        attribute :import_file_name, :type => :string
        attribute :on_disk_size, :type => :integer
        attribute :path, :type => :string
        attribute :shareable, :type => :boolean
        attribute :size, :type => :integer
        has_many_identities :vm_disk_mapping_ids, :vm_disk_mappings, :all_name => :vm_disk_mappings
        has_one_identity :assembly_virtual_disk_id, :assembly_virtual_disks, :details_name => :assembly_virtual_disk
        has_one_identity :repository_id, :repositories, :details_name => :repository
      end
    end
  end
end
