module Fog
  module Compute
    class Oracle
      class Real
        def list_assembly_virtual_disks()
          request(
            :expects  => [200],
            :method   => 'GET',
            :path     => 'AssemblyVirtualDisk',
          )
        end
      end

      class Mock
        include Fog::Oracle::JsonUtils

        def list_assembly_virtual_disks()
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

