require 'fog/oracle/models/collection'
require 'fog/oracle/models/compute/access_group'

module Fog
  module Compute
    class Oracle
      class AccessGroups < Fog::Oracle::Collection
        model Fog::Compute::Oracle::AccessGroup

        def all()
          data = service.list_access_groups()
          load_response(data)
        end

        def get(id)
          data = service.get_access_group(id_value(id))
          new_from_response(data)
        end
      end
    end
  end
end
