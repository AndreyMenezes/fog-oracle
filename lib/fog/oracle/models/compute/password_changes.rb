require 'fog/oracle/models/collection'
require 'fog/oracle/models/compute/password_change'

module Fog
  module Compute
    class Oracle
      class PasswordChanges < Fog::Oracle::Collection
        model Fog::Compute::Oracle::PasswordChange

        def all()
          data = service.list_password_changes()
          load_response(data)
        end

        def get(id)
          data = service.get_password_change(id_value(id))
          new_from_response(data)
        end
      end
    end
  end
end
