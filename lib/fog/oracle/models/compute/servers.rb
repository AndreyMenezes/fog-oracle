require 'fog/oracle/models/collection'
require 'fog/oracle/models/compute/server'

module Fog
  module Compute
    class Oracle
      class Servers < Fog::Oracle::Collection
        model Fog::Compute::Oracle::Server

        def all()
          data = service.list_servers()
          load_response(data)
        end

        def get(id)
          data = service.get_server(id_value(id))
          new_from_response(data)
        end
      end
    end
  end
end
