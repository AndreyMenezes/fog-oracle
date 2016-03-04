require 'fog/oracle/models/compute/base_object'

module Fog
  module Compute
    class Oracle
      class VmDiskMapping < BaseObject
        attribute :disk_target, :type => :integer
        attribute :disk_write_mode, :type => :string # DiskWriteMode
        attribute :emulated_block_device, :type => :boolean
        has_one_identity :storage_element_id, :storage_elements, :details_name => :storage_element
        has_one_identity :virtual_disk_id, :virtual_disks, :details_name => :virtual_disk
        has_one_identity :vm_id, :vms, :details_name => :vm
      end
    end
  end
end
