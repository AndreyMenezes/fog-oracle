require 'fog/oracle/models/collection'
require 'fog/oracle/models/compute/cluster'

module Fog
  module Compute
    class Oracle
      class Clusters < Fog::Oracle::Collection
        model Fog::Compute::Oracle::Cluster

        def all()
          data = service.list_clusters()
          load_response(data)
        end

        def get(id)
          data = service.get_cluster(id_value(id))
          new_from_response(data)
        end
      end
    end
  end
end
