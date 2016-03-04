require 'fog/oracle/models/collection'
require 'fog/oracle/models/compute/cluster_heartbeat_device'

module Fog
  module Compute
    class Oracle
      class ClusterHeartbeatDevices < Fog::Oracle::Collection
        model Fog::Compute::Oracle::ClusterHeartbeatDevice

        def all()
          data = service.list_cluster_heartbeat_devices()
          load_response(data)
        end

        def get(id)
          data = service.get_cluster_heartbeat_device(id_value(id))
          new_from_response(data)
        end
      end
    end
  end
end
