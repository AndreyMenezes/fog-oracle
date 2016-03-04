require 'fog/oracle/models/compute/base_object'

module Fog
  module Compute
    class Oracle
      class Zone < BaseObject
        has_many_identities :file_server_ids, :file_servers, :all_name => :file_servers
        has_many_identities :server_pool_ids, :server_pools, :all_name => :server_pools
        has_many_identities :storage_array_ids, :storage_arrays, :all_name => :storage_arrays
      end
    end
  end
end
