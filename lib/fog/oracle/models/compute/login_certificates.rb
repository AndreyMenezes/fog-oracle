require 'fog/oracle/models/collection'
require 'fog/oracle/models/compute/login_certificate'

module Fog
  module Compute
    class Oracle
      class LoginCertificates < Fog::Oracle::Collection
        model Fog::Compute::Oracle::LoginCertificate

        def all()
          data = service.list_login_certificates()
          load_response(data)
        end

        def get(id)
          data = service.get_login_certificate(id_value(id))
          new_from_response(data)
        end
      end
    end
  end
end
