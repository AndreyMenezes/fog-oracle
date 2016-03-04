module Fog
  module Compute
    class Oracle
      class Real
        def list_repositories()
          request(
            :expects  => [200],
            :method   => 'GET',
            :path     => 'Repository',
          )
        end
      end

      class Mock
        include Fog::Oracle::JsonUtils

        def list_repositories()
          response = Excon::Response.new
          response.status = 200
          response.body = json_decode <<-JSON
            [
              {
                "id": {
                  "type": "com.oracle.ovm.mgr.ws.model.Repository",
                  "value": "0004fb00000300003076225fcb290271",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/Repository/0004fb00000300003076225fcb290271",
                  "name": "test-pool"
                },
                "name": "test-pool",
                "description": "",
                "locked": false,
                "readOnly": false,
                "generation": 17,
                "userData": [],
                "resourceGroupIds": [],
                "virtualDiskIds": [
                  {
                    "type": "com.oracle.ovm.mgr.ws.model.VirtualDisk",
                    "value": "0004fb000012000083f79193eb5f331e.img",
                    "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/VirtualDisk/0004fb000012000083f79193eb5f331e.img",
                    "name": "test"
                  },
                  {
                    "type": "com.oracle.ovm.mgr.ws.model.VirtualDisk",
                    "value": "0004fb00001200006b0be3e9eece06c8.img",
                    "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/VirtualDisk/0004fb00001200006b0be3e9eece06c8.img",
                    "name": "test (2)"
                  },
                  {
                    "type": "com.oracle.ovm.mgr.ws.model.VirtualDisk",
                    "value": "0004fb0000120000bd2532803aa551fe.img",
                    "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/VirtualDisk/0004fb0000120000bd2532803aa551fe.img",
                    "name": "test (3)"
                  },
                  {
                    "type": "com.oracle.ovm.mgr.ws.model.VirtualDisk",
                    "value": "0004fb0000120000be8645e8d8b9bf65.img",
                    "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/VirtualDisk/0004fb0000120000be8645e8d8b9bf65.img",
                    "name": "Test3disk"
                  },
                  {
                    "type": "com.oracle.ovm.mgr.ws.model.VirtualDisk",
                    "value": "0004fb00001200009da84520b0d03dd5.img",
                    "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/VirtualDisk/0004fb00001200009da84520b0d03dd5.img",
                    "name": "Test4.0"
                  },
                  {
                    "type": "com.oracle.ovm.mgr.ws.model.VirtualDisk",
                    "value": "0004fb0000150000371dba26e69f20f6.iso",
                    "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/VirtualDisk/0004fb0000150000371dba26e69f20f6.iso",
                    "name": "CentOS-7-x86_64-Minimal-1503-01.iso"
                  },
                  {
                    "type": "com.oracle.ovm.mgr.ws.model.VirtualDisk",
                    "value": "0004fb0000150000d4103fe39b16ac7a.iso",
                    "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/VirtualDisk/0004fb0000150000d4103fe39b16ac7a.iso",
                    "name": "ubuntu-14.04.3-server-amd64.iso"
                  },
                  {
                    "type": "com.oracle.ovm.mgr.ws.model.VirtualDisk",
                    "value": "0004fb0000150000b57ac11b9bf3970e.iso",
                    "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/VirtualDisk/0004fb0000150000b57ac11b9bf3970e.iso",
                    "name": "OracleLinux-R6-U7-Server-x86_64-dvd.iso"
                  },
                  {
                    "type": "com.oracle.ovm.mgr.ws.model.VirtualDisk",
                    "value": "0004fb00001500009d25437163f7d3fb.iso",
                    "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/VirtualDisk/0004fb00001500009d25437163f7d3fb.iso",
                    "name": "OracleLinux-R7-U1-Server-x86_64-dvd.iso"
                  }
                ],
                "vmIds": [
                  {
                    "type": "com.oracle.ovm.mgr.ws.model.Vm",
                    "value": "0004fb00000600002d441b5e6431b729",
                    "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/Vm/0004fb00000600002d441b5e6431b729",
                    "name": "test"
                  },
                  {
                    "type": "com.oracle.ovm.mgr.ws.model.Vm",
                    "value": "0004fb0000060000bc56cffe6e9aba7a",
                    "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/Vm/0004fb0000060000bc56cffe6e9aba7a",
                    "name": "centos-7-template.0"
                  },
                  {
                    "type": "com.oracle.ovm.mgr.ws.model.Vm",
                    "value": "0004fb0000060000fae47dddca76434d",
                    "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/Vm/0004fb0000060000fae47dddca76434d",
                    "name": "test2.0"
                  },
                  {
                    "type": "com.oracle.ovm.mgr.ws.model.Vm",
                    "value": "0004fb00000600006f8e65a5d245ea0c",
                    "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/Vm/0004fb00000600006f8e65a5d245ea0c",
                    "name": "Test3.0"
                  },
                  {
                    "type": "com.oracle.ovm.mgr.ws.model.Vm",
                    "value": "0004fb0000060000048aa9b21a891dc1",
                    "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/Vm/0004fb0000060000048aa9b21a891dc1",
                    "name": "Test4.0"
                  }
                ],
                "assemblyIds": [],
                "presentedServerIds": [
                  {
                    "type": "com.oracle.ovm.mgr.ws.model.Server",
                    "value": "03:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09",
                    "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/Server/03:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09",
                    "name": "oracle-vm-server"
                  }
                ],
                "fileSystemId": {
                  "type": "com.oracle.ovm.mgr.ws.model.FileSystem",
                  "value": "0004fb00000500003a887e2393804ccb",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/FileSystem/0004fb00000500003a887e2393804ccb",
                  "name": null
                },
                "managerUuid": "0004fb000001000078b1f88e034c8105",
                "refreshed": true,
                "sharePath": ""
              }
            ]
          JSON
          response
        end
      end
    end
  end
end

