require 'fog/oracle/models/compute/base_object'

module Fog
  module Compute
    class Oracle
      class ClusterStorageFs < BaseObject
        has_one_identity :cluster_heartbeat_device_id, :cluster_heartbeat_devices, :details_name => :cluster_heartbeat_device
      end
    end
  end
end
