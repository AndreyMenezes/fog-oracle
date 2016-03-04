require 'fog/oracle/models/collection'
require 'fog/oracle/models/compute/string_list'

module Fog
  module Compute
    class Oracle
      class StringLists < Fog::Oracle::Collection
        model Fog::Compute::Oracle::StringList

        def all()
          data = service.list_string_lists()
          load_response(data)
        end

        def get(id)
          data = service.get_string_list(id_value(id))
          new_from_response(data)
        end
      end
    end
  end
end
