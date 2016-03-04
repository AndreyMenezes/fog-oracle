require 'fog/oracle/models/compute/base_object'

module Fog
  module Compute
    class Oracle
      class Cluster < BaseObject
        attribute :cluster_timeout, :type => :integer
        has_many_identities :file_system_ids, :file_systems, :all_name => :file_systems
        has_many_identities :heartbeat_device_ids, :cluster_heartbeat_devices, :all_name => :heartbeat_devices
        has_many_identities :server_ids, :servers, :all_name => :servers
        has_one_identity :server_pool_id, :server_pools, :details_name => :server_pool
      end
    end
  end
end
