require 'fog/oracle/models/collection'
require 'fog/oracle/models/compute/key_value_pair'

module Fog
  module Compute
    class Oracle
      class KeyValuePairs < Fog::Oracle::Collection
        model Fog::Compute::Oracle::KeyValuePair

        def all()
          data = service.list_key_value_pairs()
          load_response(data)
        end

        def get(id)
          data = service.get_key_value_pair(id_value(id))
          new_from_response(data)
        end
      end
    end
  end
end
