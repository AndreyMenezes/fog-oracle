module Fog
  module Compute
    class Oracle
      class Real
        def list_vm_clone_definitions()
          request(
            :expects  => [200],
            :method   => 'GET',
            :path     => 'VmCloneDefinition',
          )
        end
      end

      class Mock
        include Fog::Oracle::JsonUtils

        def list_vm_clone_definitions()
          response = Excon::Response.new
          response.status = 200
          response.body = json_decode <<-JSON
            []
          JSON
          response
        end
      end
    end
  end
end

