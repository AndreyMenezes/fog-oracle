module Fog
  module Compute
    class Oracle
      class Real
        def get_vm_disk_mapping(id)
          request(
            :expects  => [200],
            :method   => 'GET',
            :path     => "VmDiskMapping/#{escape(id)}",
          )
        end
      end

      class Mock
        include Fog::Oracle::JsonUtils

        def get_vm_disk_mapping(id)
          response = Excon::Response.new
          response.status = 200
          response.body = json_decode <<-JSON
            {
              "id": {
                "type": "com.oracle.ovm.mgr.ws.model.VmDiskMapping",
                "value": "0004fb000013000065273ee6acff3715",
                "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/VmDiskMapping/0004fb000013000065273ee6acff3715",
                "name": "Mapping for disk Id (0004fb00001200009da84520b0d03dd5.img)"
              },
              "name": "Mapping for disk Id (0004fb00001200009da84520b0d03dd5.img)",
              "description": "",
              "locked": false,
              "readOnly": false,
              "generation": 3,
              "userData": [],
              "resourceGroupIds": [],
              "vmId": {
                "type": "com.oracle.ovm.mgr.ws.model.Vm",
                "value": "0004fb0000060000048aa9b21a891dc1",
                "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/Vm/0004fb0000060000048aa9b21a891dc1",
                "name": "Test4.0"
              },
              "virtualDiskId": {
                "type": "com.oracle.ovm.mgr.ws.model.VirtualDisk",
                "value": "0004fb00001200009da84520b0d03dd5.img",
                "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/VirtualDisk/0004fb00001200009da84520b0d03dd5.img",
                "name": "Test4.0"
              },
              "storageElementId": null,
              "diskTarget": 0,
              "emulatedBlockDevice": false,
              "diskWriteMode": "READ_WRITE"
            }
          JSON
          response
        end
      end
    end
  end
end

