module Fog
  module Compute
    class Oracle
      class Real
        def list_virtual_disks()
          request(
            :expects  => [200],
            :method   => 'GET',
            :path     => 'VirtualDisk',
          )
        end
      end

      class Mock
        include Fog::Oracle::JsonUtils

        def list_virtual_disks()
          response = Excon::Response.new
          response.status = 200
          response.body = json_decode <<-JSON
            [
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
              },
              {
                "id": {
                  "type": "com.oracle.ovm.mgr.ws.model.VirtualDisk",
                  "value": "0004fb0000120000be8645e8d8b9bf65.img",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/VirtualDisk/0004fb0000120000be8645e8d8b9bf65.img",
                  "name": "Test3disk"
                },
                "name": "Test3disk",
                "description": "",
                "locked": false,
                "readOnly": false,
                "generation": 1,
                "userData": [],
                "resourceGroupIds": [],
                "diskType": "VIRTUAL_DISK",
                "size": 7516192768,
                "onDiskSize": 0,
                "path": "/VirtualDisks/0004fb0000120000be8645e8d8b9bf65.img",
                "shareable": false,
                "importFileName": null,
                "vmDiskMappingIds": [
                  {
                    "type": "com.oracle.ovm.mgr.ws.model.VmDiskMapping",
                    "value": "0004fb000013000030d92b2d5d22870d",
                    "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/VmDiskMapping/0004fb000013000030d92b2d5d22870d",
                    "name": "Mapping for disk Id (0004fb0000120000be8645e8d8b9bf65.img)"
                  }
                ],
                "repositoryId": {
                  "type": "com.oracle.ovm.mgr.ws.model.Repository",
                  "value": "0004fb00000300003076225fcb290271",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/Repository/0004fb00000300003076225fcb290271",
                  "name": "test-pool"
                },
                "assemblyVirtualDiskId": null
              },
              {
                "id": {
                  "type": "com.oracle.ovm.mgr.ws.model.VirtualDisk",
                  "value": "0004fb00001200009da84520b0d03dd5.img",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/VirtualDisk/0004fb00001200009da84520b0d03dd5.img",
                  "name": "Test4.0"
                },
                "name": "Test4.0",
                "description": "",
                "locked": false,
                "readOnly": false,
                "generation": 1,
                "userData": [],
                "resourceGroupIds": [],
                "diskType": "VIRTUAL_DISK",
                "size": 21474836480,
                "onDiskSize": 0,
                "path": "/VirtualDisks/0004fb00001200009da84520b0d03dd5.img",
                "shareable": false,
                "importFileName": null,
                "vmDiskMappingIds": [
                  {
                    "type": "com.oracle.ovm.mgr.ws.model.VmDiskMapping",
                    "value": "0004fb000013000065273ee6acff3715",
                    "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/VmDiskMapping/0004fb000013000065273ee6acff3715",
                    "name": "Mapping for disk Id (0004fb00001200009da84520b0d03dd5.img)"
                  }
                ],
                "repositoryId": {
                  "type": "com.oracle.ovm.mgr.ws.model.Repository",
                  "value": "0004fb00000300003076225fcb290271",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/Repository/0004fb00000300003076225fcb290271",
                  "name": "test-pool"
                },
                "assemblyVirtualDiskId": null
              },
              {
                "id": {
                  "type": "com.oracle.ovm.mgr.ws.model.VirtualDisk",
                  "value": "0004fb00001200006b0be3e9eece06c8.img",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/VirtualDisk/0004fb00001200006b0be3e9eece06c8.img",
                  "name": "test (2)"
                },
                "name": "test (2)",
                "description": "",
                "locked": false,
                "readOnly": false,
                "generation": 0,
                "userData": [],
                "resourceGroupIds": [],
                "diskType": "VIRTUAL_DISK",
                "size": 10737418240,
                "onDiskSize": 1041235968,
                "path": "/VirtualDisks/0004fb00001200006b0be3e9eece06c8.img",
                "shareable": false,
                "importFileName": null,
                "vmDiskMappingIds": [
                  {
                    "type": "com.oracle.ovm.mgr.ws.model.VmDiskMapping",
                    "value": "0004fb00001300007ec4ddf43e6c59ff",
                    "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/VmDiskMapping/0004fb00001300007ec4ddf43e6c59ff",
                    "name": "Mapping for disk Id (0004fb00001200006b0be3e9eece06c8.img)"
                  }
                ],
                "repositoryId": {
                  "type": "com.oracle.ovm.mgr.ws.model.Repository",
                  "value": "0004fb00000300003076225fcb290271",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/Repository/0004fb00000300003076225fcb290271",
                  "name": "test-pool"
                },
                "assemblyVirtualDiskId": null
              },
              {
                "id": {
                  "type": "com.oracle.ovm.mgr.ws.model.VirtualDisk",
                  "value": "0004fb0000120000bd2532803aa551fe.img",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/VirtualDisk/0004fb0000120000bd2532803aa551fe.img",
                  "name": "test (3)"
                },
                "name": "test (3)",
                "description": "",
                "locked": false,
                "readOnly": false,
                "generation": 0,
                "userData": [],
                "resourceGroupIds": [],
                "diskType": "VIRTUAL_DISK",
                "size": 10737418240,
                "onDiskSize": 1041235968,
                "path": "/VirtualDisks/0004fb0000120000bd2532803aa551fe.img",
                "shareable": false,
                "importFileName": null,
                "vmDiskMappingIds": [
                  {
                    "type": "com.oracle.ovm.mgr.ws.model.VmDiskMapping",
                    "value": "0004fb000013000034e2ae0bc056f1dd",
                    "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/VmDiskMapping/0004fb000013000034e2ae0bc056f1dd",
                    "name": "Mapping for disk Id (0004fb0000120000bd2532803aa551fe.img)"
                  }
                ],
                "repositoryId": {
                  "type": "com.oracle.ovm.mgr.ws.model.Repository",
                  "value": "0004fb00000300003076225fcb290271",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/Repository/0004fb00000300003076225fcb290271",
                  "name": "test-pool"
                },
                "assemblyVirtualDiskId": null
              },
              {
                "id": {
                  "type": "com.oracle.ovm.mgr.ws.model.VirtualDisk",
                  "value": "0004fb0000150000b57ac11b9bf3970e.iso",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/VirtualDisk/0004fb0000150000b57ac11b9bf3970e.iso",
                  "name": "OracleLinux-R6-U7-Server-x86_64-dvd.iso"
                },
                "name": "OracleLinux-R6-U7-Server-x86_64-dvd.iso",
                "description": "Import URL: http://iso.linuxquestions.org/download/908/9369/http/ftp5.gwdg.de/OracleLinux-R6-U7-Server-x86_64-dvd.iso",
                "locked": false,
                "readOnly": false,
                "generation": 0,
                "userData": [],
                "resourceGroupIds": [],
                "diskType": "VIRTUAL_CDROM",
                "size": 3914334208,
                "onDiskSize": 3914334208,
                "path": "/ISOs/0004fb0000150000b57ac11b9bf3970e.iso",
                "shareable": true,
                "importFileName": "OracleLinux-R6-U7-Server-x86_64-dvd.iso",
                "vmDiskMappingIds": [],
                "repositoryId": {
                  "type": "com.oracle.ovm.mgr.ws.model.Repository",
                  "value": "0004fb00000300003076225fcb290271",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/Repository/0004fb00000300003076225fcb290271",
                  "name": "test-pool"
                },
                "assemblyVirtualDiskId": null
              },
              {
                "id": {
                  "type": "com.oracle.ovm.mgr.ws.model.VirtualDisk",
                  "value": "0004fb00001500009d25437163f7d3fb.iso",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/VirtualDisk/0004fb00001500009d25437163f7d3fb.iso",
                  "name": "OracleLinux-R7-U1-Server-x86_64-dvd.iso"
                },
                "name": "OracleLinux-R7-U1-Server-x86_64-dvd.iso",
                "description": "Import URL: http://iso.linuxquestions.org/download/1684/9132/http/ftp.linux.org.uk/OracleLinux-R7-U1-Server-x86_64-dvd.iso",
                "locked": false,
                "readOnly": false,
                "generation": 0,
                "userData": [],
                "resourceGroupIds": [],
                "diskType": "VIRTUAL_CDROM",
                "size": 4293918720,
                "onDiskSize": 4293918720,
                "path": "/ISOs/0004fb00001500009d25437163f7d3fb.iso",
                "shareable": true,
                "importFileName": "OracleLinux-R7-U1-Server-x86_64-dvd.iso",
                "vmDiskMappingIds": [],
                "repositoryId": {
                  "type": "com.oracle.ovm.mgr.ws.model.Repository",
                  "value": "0004fb00000300003076225fcb290271",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/Repository/0004fb00000300003076225fcb290271",
                  "name": "test-pool"
                },
                "assemblyVirtualDiskId": null
              },
              {
                "id": {
                  "type": "com.oracle.ovm.mgr.ws.model.VirtualDisk",
                  "value": "0004fb0000150000d4103fe39b16ac7a.iso",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/VirtualDisk/0004fb0000150000d4103fe39b16ac7a.iso",
                  "name": "ubuntu-14.04.3-server-amd64.iso"
                },
                "name": "ubuntu-14.04.3-server-amd64.iso",
                "description": "Import URL: http://de.releases.ubuntu.com/14.04.3/ubuntu-14.04.3-server-amd64.iso",
                "locked": false,
                "readOnly": false,
                "generation": 2,
                "userData": [],
                "resourceGroupIds": [],
                "diskType": "VIRTUAL_CDROM",
                "size": 601882624,
                "onDiskSize": 601882624,
                "path": "/ISOs/0004fb0000150000d4103fe39b16ac7a.iso",
                "shareable": true,
                "importFileName": "ubuntu-14.04.3-server-amd64.iso",
                "vmDiskMappingIds": [],
                "repositoryId": {
                  "type": "com.oracle.ovm.mgr.ws.model.Repository",
                  "value": "0004fb00000300003076225fcb290271",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/Repository/0004fb00000300003076225fcb290271",
                  "name": "test-pool"
                },
                "assemblyVirtualDiskId": null
              },
              {
                "id": {
                  "type": "com.oracle.ovm.mgr.ws.model.VirtualDisk",
                  "value": "0004fb0000150000371dba26e69f20f6.iso",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/VirtualDisk/0004fb0000150000371dba26e69f20f6.iso",
                  "name": "CentOS-7-x86_64-Minimal-1503-01.iso"
                },
                "name": "CentOS-7-x86_64-Minimal-1503-01.iso",
                "description": "Import URL: http://ftp.arnes.si/pub/mirrors/centos.org/7.1.1503/isos/x86_64/CentOS-7-x86_64-Minimal-1503-01.iso",
                "locked": false,
                "readOnly": false,
                "generation": 3,
                "userData": [],
                "resourceGroupIds": [],
                "diskType": "VIRTUAL_CDROM",
                "size": 666894336,
                "onDiskSize": 666894336,
                "path": "/ISOs/0004fb0000150000371dba26e69f20f6.iso",
                "shareable": true,
                "importFileName": "CentOS-7-x86_64-Minimal-1503-01.iso",
                "vmDiskMappingIds": [
                  {
                    "type": "com.oracle.ovm.mgr.ws.model.VmDiskMapping",
                    "value": "0004fb0000130000505334a03f0e1e7a",
                    "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/VmDiskMapping/0004fb0000130000505334a03f0e1e7a",
                    "name": "Mapping for disk Id (0004fb0000150000371dba26e69f20f6.iso)"
                  }
                ],
                "repositoryId": {
                  "type": "com.oracle.ovm.mgr.ws.model.Repository",
                  "value": "0004fb00000300003076225fcb290271",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/Repository/0004fb00000300003076225fcb290271",
                  "name": "test-pool"
                },
                "assemblyVirtualDiskId": null
              },
              {
                "id": {
                  "type": "com.oracle.ovm.mgr.ws.model.VirtualDisk",
                  "value": "EMPTY_CDROM",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/VirtualDisk/EMPTY_CDROM",
                  "name": "Empty CDROM"
                },
                "name": "Empty CDROM",
                "description": "",
                "locked": false,
                "readOnly": false,
                "generation": 1,
                "userData": [],
                "resourceGroupIds": [],
                "diskType": "VIRTUAL_CDROM",
                "size": 0,
                "onDiskSize": 0,
                "path": null,
                "shareable": true,
                "importFileName": null,
                "vmDiskMappingIds": [
                  {
                    "type": "com.oracle.ovm.mgr.ws.model.VmDiskMapping",
                    "value": "0004fb0000130000066c06003eb4b125",
                    "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/VmDiskMapping/0004fb0000130000066c06003eb4b125",
                    "name": "Mapping for disk Id (0004fb0000150000371dba26e69f20f6.iso)"
                  }
                ],
                "repositoryId": null,
                "assemblyVirtualDiskId": null
              }
            ]
          JSON
          response
        end
      end
    end
  end
end

