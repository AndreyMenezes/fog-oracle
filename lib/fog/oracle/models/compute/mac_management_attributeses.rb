require 'fog/oracle/models/collection'
require 'fog/oracle/models/compute/mac_management_attributes'

module Fog
  module Compute
    class Oracle
      class MacManagementAttributeses < Fog::Oracle::Collection
        model Fog::Compute::Oracle::MacManagementAttributes

        def all()
          data = service.list_mac_management_attributeses()
          load_response(data)
        end

        def get(id)
          data = service.get_mac_management_attributes(id_value(id))
          new_from_response(data)
        end
      end
    end
  end
end
