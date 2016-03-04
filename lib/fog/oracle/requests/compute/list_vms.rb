module Fog
  module Compute
    class Oracle
      class Real
        def list_vms()
          request(
            :expects  => [200],
            :method   => 'GET',
            :path     => 'Vm',
          )
        end
      end

      class Mock
        include Fog::Oracle::JsonUtils

        def list_vms()
          response = Excon::Response.new
          response.status = 200
          response.body = json_decode <<-JSON
            [
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
              },
              {
                "id": {
                  "type": "com.oracle.ovm.mgr.ws.model.Vm",
                  "value": "0004fb0000060000bc56cffe6e9aba7a",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/Vm/0004fb0000060000bc56cffe6e9aba7a",
                  "name": "centos-7-template.0"
                },
                "name": "centos-7-template.0",
                "description": "",
                "locked": false,
                "readOnly": false,
                "generation": 1,
                "userData": [],
                "resourceGroupIds": [],
                "vmRunState": "TEMPLATE",
                "cpuPriority": 50,
                "memory": 1024,
                "memoryLimit": 1024,
                "hugePagesEnabled": false,
                "cpuCount": 1,
                "cpuCountLimit": 1,
                "cpuUtilizationCap": 100,
                "highAvailability": false,
                "bootOrder": [
                  "DISK",
                  "CDROM"
                ],
                "vmMouseType": "OS_DEFAULT",
                "osType": "Other Linux",
                "vmDomainType": "XEN_HVM",
                "diskLimit": 4,
                "vmDiskMappingIds": [
                  {
                    "type": "com.oracle.ovm.mgr.ws.model.VmDiskMapping",
                    "value": "0004fb00001300007ec4ddf43e6c59ff",
                    "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/VmDiskMapping/0004fb00001300007ec4ddf43e6c59ff",
                    "name": "Mapping for disk Id (0004fb00001200006b0be3e9eece06c8.img)"
                  }
                ],
                "virtualNicIds": [
                  {
                    "type": "com.oracle.ovm.mgr.ws.model.VirtualNic",
                    "value": "0004fb0000070000bcfbd74f6571fc9d",
                    "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/VirtualNic/0004fb0000070000bcfbd74f6571fc9d",
                    "name": "Template Vnic"
                  }
                ],
                "repositoryId": {
                  "type": "com.oracle.ovm.mgr.ws.model.Repository",
                  "value": "0004fb00000300003076225fcb290271",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/Repository/0004fb00000300003076225fcb290271",
                  "name": "test-pool"
                },
                "serverPoolId": null,
                "networkInstallPath": "",
                "vmCloneDefinitionIds": [],
                "origin": "",
                "keymapName": "en-us",
                "serverId": null,
                "sslVncPort": null,
                "sslTtyPort": null,
                "affinityGroupIds": null,
                "osVersion": null,
                "kernelVersion": null,
                "guestDriverVersion": null,
                "vmApiVersion": null,
                "vmStartPolicy": null,
                "currentMemory": -1,
                "currentCpuCount": -1,
                "currentDomainId": -1,
                "architecture": null,
                "restartActionOnCrash": "RESTART",
                "restartActionOnPowerOff": "STOP",
                "restartActionOnRestart": "RESTART"
              },
              {
                "id": {
                  "type": "com.oracle.ovm.mgr.ws.model.Vm",
                  "value": "0004fb00000600002d441b5e6431b729",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/Vm/0004fb00000600002d441b5e6431b729",
                  "name": "test"
                },
                "name": "test",
                "description": "",
                "locked": false,
                "readOnly": false,
                "generation": 13,
                "userData": [],
                "resourceGroupIds": [],
                "vmRunState": "RUNNING",
                "cpuPriority": 50,
                "memory": 1024,
                "memoryLimit": 1024,
                "hugePagesEnabled": false,
                "cpuCount": 1,
                "cpuCountLimit": 1,
                "cpuUtilizationCap": 100,
                "highAvailability": false,
                "bootOrder": [
                  "DISK",
                  "CDROM"
                ],
                "vmMouseType": "OS_DEFAULT",
                "osType": "Other Linux",
                "vmDomainType": "XEN_HVM",
                "diskLimit": 4,
                "vmDiskMappingIds": [
                  {
                    "type": "com.oracle.ovm.mgr.ws.model.VmDiskMapping",
                    "value": "0004fb0000130000505334a03f0e1e7a",
                    "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/VmDiskMapping/0004fb0000130000505334a03f0e1e7a",
                    "name": "Mapping for disk Id (0004fb0000150000371dba26e69f20f6.iso)"
                  },
                  {
                    "type": "com.oracle.ovm.mgr.ws.model.VmDiskMapping",
                    "value": "0004fb0000130000f79077fbb602029e",
                    "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/VmDiskMapping/0004fb0000130000f79077fbb602029e",
                    "name": "Mapping for disk Id (0004fb000012000083f79193eb5f331e.img)"
                  }
                ],
                "virtualNicIds": [
                  {
                    "type": "com.oracle.ovm.mgr.ws.model.VirtualNic",
                    "value": "0004fb0000070000f35dc14d694dadc9",
                    "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/VirtualNic/0004fb0000070000f35dc14d694dadc9",
                    "name": "00:21:f6:3a:60:bc"
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
                "sslVncPort": "6900",
                "sslTtyPort": "10001",
                "affinityGroupIds": [],
                "osVersion": null,
                "kernelVersion": null,
                "guestDriverVersion": null,
                "vmApiVersion": null,
                "vmStartPolicy": "BEST_SERVER",
                "currentMemory": 1030,
                "currentCpuCount": 1,
                "currentDomainId": 2,
                "architecture": null,
                "restartActionOnCrash": "RESTART",
                "restartActionOnPowerOff": "STOP",
                "restartActionOnRestart": "RESTART"
              },
              {
                "id": {
                  "type": "com.oracle.ovm.mgr.ws.model.Vm",
                  "value": "0004fb0000060000fae47dddca76434d",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/Vm/0004fb0000060000fae47dddca76434d",
                  "name": "test2.0"
                },
                "name": "test2.0",
                "description": "",
                "locked": false,
                "readOnly": false,
                "generation": 5,
                "userData": [],
                "resourceGroupIds": [],
                "vmRunState": "RUNNING",
                "cpuPriority": 50,
                "memory": 1024,
                "memoryLimit": 1024,
                "hugePagesEnabled": false,
                "cpuCount": 1,
                "cpuCountLimit": 1,
                "cpuUtilizationCap": 100,
                "highAvailability": false,
                "bootOrder": [
                  "DISK",
                  "CDROM"
                ],
                "vmMouseType": "OS_DEFAULT",
                "osType": "Other Linux",
                "vmDomainType": "XEN_HVM",
                "diskLimit": 4,
                "vmDiskMappingIds": [
                  {
                    "type": "com.oracle.ovm.mgr.ws.model.VmDiskMapping",
                    "value": "0004fb000013000034e2ae0bc056f1dd",
                    "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/VmDiskMapping/0004fb000013000034e2ae0bc056f1dd",
                    "name": "Mapping for disk Id (0004fb0000120000bd2532803aa551fe.img)"
                  }
                ],
                "virtualNicIds": [
                  {
                    "type": "com.oracle.ovm.mgr.ws.model.VirtualNic",
                    "value": "0004fb0000070000aaf69e494353ebb9",
                    "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/VirtualNic/0004fb0000070000aaf69e494353ebb9",
                    "name": "00:21:f6:4b:c7:1d"
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
                "sslVncPort": "6901",
                "sslTtyPort": "10003",
                "affinityGroupIds": [],
                "osVersion": null,
                "kernelVersion": null,
                "guestDriverVersion": null,
                "vmApiVersion": null,
                "vmStartPolicy": "USE_POOL_POLICY",
                "currentMemory": 1027,
                "currentCpuCount": 1,
                "currentDomainId": 3,
                "architecture": null,
                "restartActionOnCrash": "RESTART",
                "restartActionOnPowerOff": "STOP",
                "restartActionOnRestart": "RESTART"
              },
              {
                "id": {
                  "type": "com.oracle.ovm.mgr.ws.model.Vm",
                  "value": "0004fb0000060000048aa9b21a891dc1",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/Vm/0004fb0000060000048aa9b21a891dc1",
                  "name": "Test4.0"
                },
                "name": "Test4.0",
                "description": "",
                "locked": false,
                "readOnly": false,
                "generation": 35,
                "userData": [],
                "resourceGroupIds": [],
                "vmRunState": "RUNNING",
                "cpuPriority": 50,
                "memory": 4096,
                "memoryLimit": 4096,
                "hugePagesEnabled": false,
                "cpuCount": 2,
                "cpuCountLimit": 2,
                "cpuUtilizationCap": 100,
                "highAvailability": false,
                "bootOrder": [
                  "DISK",
                  "CDROM"
                ],
                "vmMouseType": "OS_DEFAULT",
                "osType": "Red Hat Enterprise Linux 7",
                "vmDomainType": "XEN_HVM",
                "diskLimit": 4,
                "vmDiskMappingIds": [
                  {
                    "type": "com.oracle.ovm.mgr.ws.model.VmDiskMapping",
                    "value": "0004fb000013000065273ee6acff3715",
                    "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/VmDiskMapping/0004fb000013000065273ee6acff3715",
                    "name": "Mapping for disk Id (0004fb00001200009da84520b0d03dd5.img)"
                  },
                  {
                    "type": "com.oracle.ovm.mgr.ws.model.VmDiskMapping",
                    "value": "0004fb0000130000066c06003eb4b125",
                    "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/VmDiskMapping/0004fb0000130000066c06003eb4b125",
                    "name": "Mapping for disk Id (0004fb0000150000371dba26e69f20f6.iso)"
                  }
                ],
                "virtualNicIds": [
                  {
                    "type": "com.oracle.ovm.mgr.ws.model.VirtualNic",
                    "value": "0004fb0000070000db41c339b6242c51",
                    "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/VirtualNic/0004fb0000070000db41c339b6242c51",
                    "name": "00:21:f6:26:2d:d2"
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
                "sslVncPort": "6903",
                "sslTtyPort": "10006",
                "affinityGroupIds": [],
                "osVersion": null,
                "kernelVersion": null,
                "guestDriverVersion": null,
                "vmApiVersion": null,
                "vmStartPolicy": "BEST_SERVER",
                "currentMemory": 3843,
                "currentCpuCount": 2,
                "currentDomainId": 13,
                "architecture": null,
                "restartActionOnCrash": "RESTART",
                "restartActionOnPowerOff": "STOP",
                "restartActionOnRestart": "RESTART"
              }
            ]
          JSON
          response
        end
      end
    end
  end
end

