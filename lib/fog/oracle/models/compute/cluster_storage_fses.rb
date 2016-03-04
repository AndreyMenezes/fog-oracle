require 'fog/oracle/models/collection'
require 'fog/oracle/models/compute/cluster_storage_fs'

module Fog
  module Compute
    class Oracle
      class ClusterStorageFses < Fog::Oracle::Collection
        model Fog::Compute::Oracle::ClusterStorageFs

        def all()
          data = service.list_cluster_storage_fses()
          load_response(data)
        end

        def get(id)
          data = service.get_cluster_storage_fs(id_value(id))
          new_from_response(data)
        end
      end
    end
  end
end
