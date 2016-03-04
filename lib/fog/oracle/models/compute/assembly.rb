require 'fog/oracle/models/compute/base_object'

module Fog
  module Compute
    class Oracle
      class Assembly < BaseObject
        attribute :locales, :type => :array # of :string
        attribute :origin, :type => :string
        has_many_identities :assembly_virtual_disk_ids, :assembly_virtual_disks, :all_name => :assembly_virtual_disks
        has_many_identities :assembly_vm_ids, :assembly_vms, :all_name => :assembly_vms
        has_one_identity :repository_id, :repositories, :details_name => :repository
      end
    end
  end
end
