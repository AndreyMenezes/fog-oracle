require 'fog/oracle/models/collection'
require 'fog/oracle/models/compute/resource_group'

module Fog
  module Compute
    class Oracle
      class ResourceGroups < Fog::Oracle::Collection
        model Fog::Compute::Oracle::ResourceGroup

        def all()
          data = service.list_resource_groups()
          load_response(data)
        end

        def get(id)
          data = service.get_resource_group(id_value(id))
          new_from_response(data)
        end
      end
    end
  end
end
