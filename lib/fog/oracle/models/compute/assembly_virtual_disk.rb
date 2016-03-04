require 'fog/oracle/models/compute/base_object'

module Fog
  module Compute
    class Oracle
      class AssemblyVirtualDisk < BaseObject
        attribute :capacity, :type => :integer
        attribute :format, :type => :string
        attribute :populated_size, :type => :integer
        has_many_identities :assembly_vm_ids, :assembly_vms, :all_name => :assembly_vms
        has_one_identity :assembly_id, :assemblies, :details_name => :assembly
      end
    end
  end
end
