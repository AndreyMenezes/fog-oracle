require 'fog/oracle/models/compute/base_object'

module Fog
  module Compute
    class Oracle
      class AssemblyVm < BaseObject
        has_many_identities :assembly_virtual_disk_ids, :assembly_virtual_disks, :all_name => :assembly_virtual_disks
        has_one_identity :assembly_id, :assemblies, :details_name => :assembly
      end
    end
  end
end
