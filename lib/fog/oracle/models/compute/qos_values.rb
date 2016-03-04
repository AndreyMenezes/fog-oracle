require 'fog/oracle/models/collection'
require 'fog/oracle/models/compute/qos_value'

module Fog
  module Compute
    class Oracle
      class QosValues < Fog::Oracle::Collection
        model Fog::Compute::Oracle::QosValue

        def all()
          data = service.list_qos_values()
          load_response(data)
        end

        def get(id)
          data = service.get_qos_value(id_value(id))
          new_from_response(data)
        end
      end
    end
  end
end
