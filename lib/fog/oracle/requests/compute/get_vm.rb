module Fog
  module Compute
    class Oracle
      class Real
        def get_vm(id)
          request(
            :expects  => [200],
            :method   => 'GET',
            :path     => "Vm/#{escape(id)}",
          )
        end
      end

      class Mock
        include Fog::Oracle::JsonUtils

        def get_vm(id)
          response = Excon::Response.new
          response.status = 200
          response.body = json_decode <<-JSON
            {
              "id": {
                "type": "com.oracle.ovm.mgr.ws.model.Vm",
                "value": "0004fb00000600006f8e65a5d245ea0c",
                "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/Vm/0004fb00000600006f8e65a5d245ea0c",
                "name": "Test3.0"
              },
              "name": "Test3.0",
              "description": "",
              "locked": false,
              "readOnly": false,
              "generation": 23,
              "userData": [],
              "resourceGroupIds": [],
              "vmRunState": "RUNNING",
              "cpuPriority": 50,
              "memory": 512,
              "memoryLimit": 512,
              "hugePagesEnabled": false,
              "cpuCount": 1,
              "cpuCountLimit": 1,
              "cpuUtilizationCap": 100,
              "highAvailability": false,
              "bootOrder": [
                "CDROM",
                "DISK"
              ],
              "vmMouseType": "OS_DEFAULT",
              "osType": "Other Linux",
              "vmDomainType": "XEN_HVM",
              "diskLimit": 4,
              "vmDiskMappingIds": [
                {
                  "type": "com.oracle.ovm.mgr.ws.model.VmDiskMapping",
                  "value": "0004fb000013000030d92b2d5d22870d",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/VmDiskMapping/0004fb000013000030d92b2d5d22870d",
                  "name": "Mapping for disk Id (0004fb0000120000be8645e8d8b9bf65.img)"
                }
              ],
              "virtualNicIds": [
                {
                  "type": "com.oracle.ovm.mgr.ws.model.VirtualNic",
                  "value": "0004fb0000070000d1272c5187d1bef0",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/VirtualNic/0004fb0000070000d1272c5187d1bef0",
                  "name": "00:21:f6:0f:d6:2c"
                }
              ],
              "repositoryId": {
                "type": "com.oracle.ovm.mgr.ws.model.Repository",
                "value": "0004fb00000300003076225fcb290271",
                "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/Repository/0004fb00000300003076225fcb290271",
                "name": "test-pool"
              },
              "serverPoolId": {
                "type": "com.oracle.ovm.mgr.ws.model.ServerPool",
                "value": "0004fb0000020000b5995e9c15a0a4a5",
                "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/ServerPool/0004fb0000020000b5995e9c15a0a4a5",
                "name": "test-pool"
              },
              "networkInstallPath": "",
              "vmCloneDefinitionIds": [],
              "origin": "",
              "keymapName": "en-us",
              "serverId": {
                "type": "com.oracle.ovm.mgr.ws.model.Server",
                "value": "03:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09",
                "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/Server/03:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09",
                "name": "oracle-vm-server"
              },
              "sslVncPort": "6902",
              "sslTtyPort": "10000",
              "affinityGroupIds": [],
              "osVersion": null,
              "kernelVersion": null,
              "guestDriverVersion": null,
              "vmApiVersion": null,
              "vmStartPolicy": "BEST_SERVER",
              "currentMemory": 515,
              "currentCpuCount": 1,
              "currentDomainId": 7,
              "architecture": null,
              "restartActionOnCrash": "RESTART",
              "restartActionOnPowerOff": "STOP",
              "restartActionOnRestart": "RESTART"
            }
          JSON
          response
        end
      end
    end
  end
end

