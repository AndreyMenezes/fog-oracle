require 'fog/oracle/models/compute/base_object'

module Fog
  module Compute
    class Oracle
      class VolumeGroup < BaseObject
        attribute :allocated_size, :type => :integer
        attribute :free_size, :type => :integer
        attribute :name_on_array, :type => :string
        attribute :total_size, :type => :integer
        attribute :used_size, :type => :integer
        attribute :volume_description, :type => :string
        has_many_identities :storage_element_ids, :storage_elements, :all_name => :storage_elements
        has_one_identity :storage_array_id, :storage_arrays, :details_name => :storage_array
      end
    end
  end
end
