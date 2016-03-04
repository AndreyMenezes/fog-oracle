require 'fog/oracle/models/collection'
require 'fog/oracle/models/compute/manager'

module Fog
  module Compute
    class Oracle
      class Managers < Fog::Oracle::Collection
        model Fog::Compute::Oracle::Manager

        def all()
          data = service.list_managers()
          load_response(data)
        end

        def get(id)
          data = service.get_manager(id_value(id))
          new_from_response(data)
        end
      end
    end
  end
end
