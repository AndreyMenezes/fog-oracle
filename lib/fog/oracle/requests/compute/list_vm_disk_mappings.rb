module Fog
  module Compute
    class Oracle
      class Real
        def list_vm_disk_mappings()
          request(
            :expects  => [200],
            :method   => 'GET',
            :path     => 'VmDiskMapping',
          )
        end
      end

      class Mock
        include Fog::Oracle::JsonUtils

        def list_vm_disk_mappings()
          response = Excon::Response.new
          response.status = 200
          response.body = json_decode <<-JSON
            [
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
              },
              {
                "id": {
                  "type": "com.oracle.ovm.mgr.ws.model.VmDiskMapping",
                  "value": "0004fb0000130000f79077fbb602029e",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/VmDiskMapping/0004fb0000130000f79077fbb602029e",
                  "name": "Mapping for disk Id (0004fb000012000083f79193eb5f331e.img)"
                },
                "name": "Mapping for disk Id (0004fb000012000083f79193eb5f331e.img)",
                "description": "",
                "locked": false,
                "readOnly": false,
                "generation": 3,
                "userData": [],
                "resourceGroupIds": [],
                "vmId": {
                  "type": "com.oracle.ovm.mgr.ws.model.Vm",
                  "value": "0004fb00000600002d441b5e6431b729",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/Vm/0004fb00000600002d441b5e6431b729",
                  "name": "test"
                },
                "virtualDiskId": {
                  "type": "com.oracle.ovm.mgr.ws.model.VirtualDisk",
                  "value": "0004fb000012000083f79193eb5f331e.img",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/VirtualDisk/0004fb000012000083f79193eb5f331e.img",
                  "name": "test"
                },
                "storageElementId": null,
                "diskTarget": 1,
                "emulatedBlockDevice": false,
                "diskWriteMode": "READ_WRITE"
              },
              {
                "id": {
                  "type": "com.oracle.ovm.mgr.ws.model.VmDiskMapping",
                  "value": "0004fb0000130000066c06003eb4b125",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/VmDiskMapping/0004fb0000130000066c06003eb4b125",
                  "name": "Mapping for disk Id (0004fb0000150000371dba26e69f20f6.iso)"
                },
                "name": "Mapping for disk Id (0004fb0000150000371dba26e69f20f6.iso)",
                "description": "",
                "locked": false,
                "readOnly": false,
                "generation": 4,
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
                  "value": "EMPTY_CDROM",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/VirtualDisk/EMPTY_CDROM",
                  "name": "Empty CDROM"
                },
                "storageElementId": null,
                "diskTarget": 1,
                "emulatedBlockDevice": false,
                "diskWriteMode": "READ_ONLY"
              },
              {
                "id": {
                  "type": "com.oracle.ovm.mgr.ws.model.VmDiskMapping",
                  "value": "0004fb0000130000505334a03f0e1e7a",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/VmDiskMapping/0004fb0000130000505334a03f0e1e7a",
                  "name": "Mapping for disk Id (0004fb0000150000371dba26e69f20f6.iso)"
                },
                "name": "Mapping for disk Id (0004fb0000150000371dba26e69f20f6.iso)",
                "description": "",
                "locked": false,
                "readOnly": false,
                "generation": 2,
                "userData": [],
                "resourceGroupIds": [],
                "vmId": {
                  "type": "com.oracle.ovm.mgr.ws.model.Vm",
                  "value": "0004fb00000600002d441b5e6431b729",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/Vm/0004fb00000600002d441b5e6431b729",
                  "name": "test"
                },
                "virtualDiskId": {
                  "type": "com.oracle.ovm.mgr.ws.model.VirtualDisk",
                  "value": "0004fb0000150000371dba26e69f20f6.iso",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/VirtualDisk/0004fb0000150000371dba26e69f20f6.iso",
                  "name": "CentOS-7-x86_64-Minimal-1503-01.iso"
                },
                "storageElementId": null,
                "diskTarget": 0,
                "emulatedBlockDevice": false,
                "diskWriteMode": "READ_ONLY"
              },
              {
                "id": {
                  "type": "com.oracle.ovm.mgr.ws.model.VmDiskMapping",
                  "value": "0004fb000013000030d92b2d5d22870d",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/VmDiskMapping/0004fb000013000030d92b2d5d22870d",
                  "name": "Mapping for disk Id (0004fb0000120000be8645e8d8b9bf65.img)"
                },
                "name": "Mapping for disk Id (0004fb0000120000be8645e8d8b9bf65.img)",
                "description": "",
                "locked": false,
                "readOnly": false,
                "generation": 3,
                "userData": [],
                "resourceGroupIds": [],
                "vmId": {
                  "type": "com.oracle.ovm.mgr.ws.model.Vm",
                  "value": "0004fb00000600006f8e65a5d245ea0c",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/Vm/0004fb00000600006f8e65a5d245ea0c",
                  "name": "Test3.0"
                },
                "virtualDiskId": {
                  "type": "com.oracle.ovm.mgr.ws.model.VirtualDisk",
                  "value": "0004fb0000120000be8645e8d8b9bf65.img",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/VirtualDisk/0004fb0000120000be8645e8d8b9bf65.img",
                  "name": "Test3disk"
                },
                "storageElementId": null,
                "diskTarget": 0,
                "emulatedBlockDevice": false,
                "diskWriteMode": "READ_WRITE"
              },
              {
                "id": {
                  "type": "com.oracle.ovm.mgr.ws.model.VmDiskMapping",
                  "value": "0004fb00001300007ec4ddf43e6c59ff",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/VmDiskMapping/0004fb00001300007ec4ddf43e6c59ff",
                  "name": "Mapping for disk Id (0004fb00001200006b0be3e9eece06c8.img)"
                },
                "name": "Mapping for disk Id (0004fb00001200006b0be3e9eece06c8.img)",
                "description": "",
                "locked": false,
                "readOnly": false,
                "generation": 2,
                "userData": [],
                "resourceGroupIds": [],
                "vmId": {
                  "type": "com.oracle.ovm.mgr.ws.model.Vm",
                  "value": "0004fb0000060000bc56cffe6e9aba7a",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/Vm/0004fb0000060000bc56cffe6e9aba7a",
                  "name": "centos-7-template.0"
                },
                "virtualDiskId": {
                  "type": "com.oracle.ovm.mgr.ws.model.VirtualDisk",
                  "value": "0004fb00001200006b0be3e9eece06c8.img",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/VirtualDisk/0004fb00001200006b0be3e9eece06c8.img",
                  "name": "test (2)"
                },
                "storageElementId": null,
                "diskTarget": 1,
                "emulatedBlockDevice": false,
                "diskWriteMode": "READ_WRITE"
              },
              {
                "id": {
                  "type": "com.oracle.ovm.mgr.ws.model.VmDiskMapping",
                  "value": "0004fb000013000034e2ae0bc056f1dd",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/VmDiskMapping/0004fb000013000034e2ae0bc056f1dd",
                  "name": "Mapping for disk Id (0004fb0000120000bd2532803aa551fe.img)"
                },
                "name": "Mapping for disk Id (0004fb0000120000bd2532803aa551fe.img)",
                "description": "",
                "locked": false,
                "readOnly": false,
                "generation": 1,
                "userData": [],
                "resourceGroupIds": [],
                "vmId": {
                  "type": "com.oracle.ovm.mgr.ws.model.Vm",
                  "value": "0004fb0000060000fae47dddca76434d",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/Vm/0004fb0000060000fae47dddca76434d",
                  "name": "test2.0"
                },
                "virtualDiskId": {
                  "type": "com.oracle.ovm.mgr.ws.model.VirtualDisk",
                  "value": "0004fb0000120000bd2532803aa551fe.img",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/VirtualDisk/0004fb0000120000bd2532803aa551fe.img",
                  "name": "test (3)"
                },
                "storageElementId": null,
                "diskTarget": 1,
                "emulatedBlockDevice": false,
                "diskWriteMode": "READ_WRITE"
              }
            ]
          JSON
          response
        end
      end
    end
  end
end

