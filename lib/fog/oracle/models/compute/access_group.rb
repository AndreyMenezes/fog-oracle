require 'fog/oracle/models/compute/base_object'

module Fog
  module Compute
    class Oracle
      class AccessGroup < BaseObject
        attribute :name_on_array, :type => :string
        attribute :type, :type => :string # AccessGroupType
        has_many_identities :file_system_ids, :file_systems, :all_name => :file_systems
        has_many_identities :server_ids, :servers, :all_name => :servers
        has_many_identities :storage_element_ids, :storage_elements, :all_name => :storage_elements
        has_many_identities :storage_initiator_ids, :storage_initiators, :all_name => :storage_initiators
        has_one_identity :file_server_id, :file_servers, :details_name => :file_server
        has_one_identity :storage_array_id, :storage_arrays, :details_name => :storage_array
      end
    end
  end
end
