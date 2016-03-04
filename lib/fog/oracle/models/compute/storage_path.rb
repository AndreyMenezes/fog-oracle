require 'fog/oracle/models/compute/base_object'

module Fog
  module Compute
    class Oracle
      class StoragePath < BaseObject
        attribute :ipaddress, :type => :string
        attribute :multipath_device, :type => :string
        attribute :path_state, :type => :string # PathState
        attribute :scsi_device_id, :type => :string
        has_one_identity :storage_element_id, :storage_elements, :details_name => :storage_element
        has_one_identity :storage_initiator_id, :storage_initiators, :details_name => :storage_initiator
        has_one_identity :storage_target_id, :storage_targets, :details_name => :storage_target
      end
    end
  end
end
