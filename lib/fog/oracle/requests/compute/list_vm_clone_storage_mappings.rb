module Fog
  module Compute
    class Oracle
      class Real
        def list_vm_clone_storage_mappings()
          request(
            :expects  => [200],
            :method   => 'GET',
            :path     => 'VmCloneStorageMapping',
          )
        end
      end

      class Mock
        include Fog::Oracle::JsonUtils

        def list_vm_clone_storage_mappings()
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

