module Fog
  module Compute
    class Oracle
      class Real
        def get_virtual_disk(id)
          request(
            :expects  => [200],
            :method   => 'GET',
            :path     => "VirtualDisk/#{escape(id)}",
          )
        end
      end

      class Mock
        include Fog::Oracle::JsonUtils

        def get_virtual_disk(id)
          response = Excon::Response.new
          response.status = 200
          response.body = json_decode <<-JSON
            {
              "id": {
                "type": "com.oracle.ovm.mgr.ws.model.VirtualDisk",
                "value": "0004fb000012000083f79193eb5f331e.img",
                "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/VirtualDisk/0004fb000012000083f79193eb5f331e.img",
                "name": "test"
              },
              "name": "test",
              "description": "",
              "locked": false,
              "readOnly": false,
              "generation": 2,
              "userData": [],
              "resourceGroupIds": [],
              "diskType": "VIRTUAL_DISK",
              "size": 10737418240,
              "onDiskSize": 0,
              "path": "/VirtualDisks/0004fb000012000083f79193eb5f331e.img",
              "shareable": false,
              "importFileName": null,
              "vmDiskMappingIds": [
                {
                  "type": "com.oracle.ovm.mgr.ws.model.VmDiskMapping",
                  "value": "0004fb0000130000f79077fbb602029e",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/VmDiskMapping/0004fb0000130000f79077fbb602029e",
                  "name": "Mapping for disk Id (0004fb000012000083f79193eb5f331e.img)"
                }
              ],
              "repositoryId": {
                "type": "com.oracle.ovm.mgr.ws.model.Repository",
                "value": "0004fb00000300003076225fcb290271",
                "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/Repository/0004fb00000300003076225fcb290271",
                "name": "test-pool"
              },
              "assemblyVirtualDiskId": null
            }
          JSON
          response
        end
      end
    end
  end
end

