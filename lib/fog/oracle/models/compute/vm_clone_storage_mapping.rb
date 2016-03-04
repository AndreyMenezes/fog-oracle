require 'fog/oracle/models/compute/base_object'

module Fog
  module Compute
    class Oracle
      class VmCloneStorageMapping < BaseObject
        attribute :clone_type, :type => :string # CloneType
        has_one_identity :repository_id, :repositories, :details_name => :repository
        has_one_identity :storage_array_id, :storage_arrays, :details_name => :storage_array
        has_one_identity :storage_element_id, :storage_elements, :details_name => :storage_element
        has_one_identity :vm_clone_definition_id, :vm_clone_definitions, :details_name => :vm_clone_definition
        has_one_identity :vm_disk_mapping_id, :vm_disk_mappings, :details_name => :vm_disk_mapping
      end
    end
  end
end
