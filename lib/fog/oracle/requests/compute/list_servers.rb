module Fog
  module Compute
    class Oracle
      class Real
        def list_servers()
          request(
            :expects  => [200],
            :method   => 'GET',
            :path     => 'Server',
          )
        end
      end

      class Mock
        include Fog::Oracle::JsonUtils

        def list_servers()
          response = Excon::Response.new
          response.status = 200
          response.body = json_decode <<-JSON
            [
              {
                "id": {
                  "type": "com.oracle.ovm.mgr.ws.model.Server",
                  "value": "03:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/Server/03:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09",
                  "name": "oracle-vm-server"
                },
                "name": "oracle-vm-server",
                "description": "",
                "locked": false,
                "readOnly": false,
                "generation": 48,
                "userData": [],
                "resourceGroupIds": [],
                "serverRunState": "RUNNING",
                "ipAddress": "172.16.92.64",
                "serverRoles": [
                  "UTILITY",
                  "VM"
                ],
                "maintenanceMode": false,
                "agentLogin": "oracle",
                "statisticInterval": 20,
                "ntpServers": [
                  "172.16.95.57"
                ],
                "biosVendor": "American Megatrends Inc.",
                "biosVersion": "F7",
                "biosReleaseDate": "01/17/2014",
                "processorType": "X86_64",
                "processorSpeed": 3591797,
                "populatedProcessorSockets": 1,
                "threadsPerCore": 2,
                "coresPerProcessorSocket": 4,
                "totalProcessorCores": 4,
                "enabledProcessorCores": 1,
                "memory": 16264,
                "usableMemory": 8509,
                "noExecuteFlag": true,
                "ovmVersion": "3.3.3-1085",
                "hostname": "oracle-vm-server",
                "managerUuid": "0004fb000001000078b1f88e034c8105",
                "manufacturer": "Gigabyte Technology Co., Ltd.",
                "productName": "To be filled by O.E.M.",
                "serialNumber": "To be filled by O.E.M.",
                "controlDomainIds": [
                  {
                    "type": "com.oracle.ovm.mgr.ws.model.ControlDomain",
                    "value": "0004fb0000210000e7c92f6882593287",
                    "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/ControlDomain/0004fb0000210000e7c92f6882593287",
                    "name": "Control Domain"
                  }
                ],
                "cpuIds": [
                  {
                    "type": "com.oracle.ovm.mgr.ws.model.Cpu",
                    "value": "Processor (1) in 03:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09",
                    "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/Cpu/Processor%20(1)%20in%2003:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09",
                    "name": null
                  },
                  {
                    "type": "com.oracle.ovm.mgr.ws.model.Cpu",
                    "value": "Processor (2) in 03:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09",
                    "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/Cpu/Processor%20(2)%20in%2003:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09",
                    "name": null
                  },
                  {
                    "type": "com.oracle.ovm.mgr.ws.model.Cpu",
                    "value": "Processor (3) in 03:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09",
                    "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/Cpu/Processor%20(3)%20in%2003:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09",
                    "name": null
                  },
                  {
                    "type": "com.oracle.ovm.mgr.ws.model.Cpu",
                    "value": "Processor (4) in 03:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09",
                    "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/Cpu/Processor%20(4)%20in%2003:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09",
                    "name": null
                  },
                  {
                    "type": "com.oracle.ovm.mgr.ws.model.Cpu",
                    "value": "Processor (5) in 03:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09",
                    "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/Cpu/Processor%20(5)%20in%2003:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09",
                    "name": null
                  },
                  {
                    "type": "com.oracle.ovm.mgr.ws.model.Cpu",
                    "value": "Processor (6) in 03:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09",
                    "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/Cpu/Processor%20(6)%20in%2003:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09",
                    "name": null
                  },
                  {
                    "type": "com.oracle.ovm.mgr.ws.model.Cpu",
                    "value": "Processor (7) in 03:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09",
                    "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/Cpu/Processor%20(7)%20in%2003:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09",
                    "name": null
                  },
                  {
                    "type": "com.oracle.ovm.mgr.ws.model.Cpu",
                    "value": "Processor (8) in 03:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09",
                    "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/Cpu/Processor%20(8)%20in%2003:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09",
                    "name": null
                  }
                ],
                "hypervisor": {
                  "capabilities": [
                    "XEN_3_0_PVM_x86_64",
                    "XEN_3_0_PVM_x86_32",
                    "XEN_3_0_HVM_x86_32",
                    "XEN_3_0_HVM_x86_32_PAE",
                    "XEN_3_0_HVM_x86_64"
                  ],
                  "version": "4.3.1OVM",
                  "type": "XEN"
                },
                "serverControllerId": null,
                "cpuCompatibilityGroupId": {
                  "type": "com.oracle.ovm.mgr.ws.model.CpuCompatibilityGroup",
                  "value": "Default_Intel_F6_M60",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/CpuCompatibilityGroup/Default_Intel_F6_M60",
                  "name": "Default_Intel_Family:6_Model:60"
                },
                "repositoryExportIds": [],
                "vmIds": [
                  {
                    "type": "com.oracle.ovm.mgr.ws.model.Vm",
                    "value": "0004fb00000600002d441b5e6431b729",
                    "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/Vm/0004fb00000600002d441b5e6431b729",
                    "name": "test"
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
                "serverPoolId": {
                  "type": "com.oracle.ovm.mgr.ws.model.ServerPool",
                  "value": "0004fb0000020000b5995e9c15a0a4a5",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/ServerPool/0004fb0000020000b5995e9c15a0a4a5",
                  "name": "test-pool"
                },
                "ethernetPortIds": [
                  {
                    "type": "com.oracle.ovm.mgr.ws.model.EthernetPort",
                    "value": "0004fb0000200000a0cc6d2cfde52f39",
                    "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/EthernetPort/0004fb0000200000a0cc6d2cfde52f39",
                    "name": "bond0 on oracle-vm-server"
                  },
                  {
                    "type": "com.oracle.ovm.mgr.ws.model.EthernetPort",
                    "value": "0004fb0000200000bd65b4a15a3af1c8",
                    "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/EthernetPort/0004fb0000200000bd65b4a15a3af1c8",
                    "name": "eth0 on oracle-vm-server"
                  }
                ],
                "clusterId": null,
                "networkIds": [],
                "fileSystemMountIds": [
                  {
                    "type": "com.oracle.ovm.mgr.ws.model.FileSystemMount",
                    "value": "03:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09_mount_/OVS/Repositories/0004fb00000300003076225fcb290271",
                    "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/FileSystemMount/03:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09_mount_%2FOVS%2FRepositories%2F0004fb00000300003076225fcb290271",
                    "name": "oracle-vm-server_/OVS/Repositories/0004fb00000300003076225fcb290271"
                  }
                ],
                "fileServerPluginIds": [
                  {
                    "type": "com.oracle.ovm.mgr.ws.model.FileServerPlugin",
                    "value": "oracle.generic.NFSPlugin.GenericNFSPlugin (1.1.0)",
                    "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/FileServerPlugin/oracle.generic.NFSPlugin.GenericNFSPlugin%20(1.1.0)",
                    "name": "Oracle Generic Network File System"
                  },
                  {
                    "type": "com.oracle.ovm.mgr.ws.model.FileServerPlugin",
                    "value": "oracle.ocfs2.OCFS2.OCFS2Plugin (0.1.0-42.1)",
                    "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/FileServerPlugin/oracle.ocfs2.OCFS2.OCFS2Plugin%20(0.1.0-42.1)",
                    "name": "Oracle OCFS2 File system"
                  }
                ],
                "storageArrayPluginIds": [
                  {
                    "type": "com.oracle.ovm.mgr.ws.model.StorageArrayPlugin",
                    "value": "oracle.generic.SCSIPlugin.GenericPlugin (1.1.0)",
                    "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/StorageArrayPlugin/oracle.generic.SCSIPlugin.GenericPlugin%20(1.1.0)",
                    "name": "Oracle Generic SCSI Plugin"
                  }
                ],
                "localStorageArrayId": {
                  "type": "com.oracle.ovm.mgr.ws.model.StorageArray",
                  "value": "0004fb000009000022fbc1cfc5f3deaf",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/StorageArray/0004fb000009000022fbc1cfc5f3deaf",
                  "name": "Generic Local Storage Array @ oracle-vm-server"
                },
                "storageInitiatorIds": [
                  {
                    "type": "com.oracle.ovm.mgr.ws.model.StorageInitiator",
                    "value": "iqn.1988-12.com.oracle:3bd917bbbc1",
                    "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/StorageInitiator/iqn.1988-12.com.oracle:3bd917bbbc1",
                    "name": "iqn.1988-12.com.oracle:3bd917bbbc1"
                  },
                  {
                    "type": "com.oracle.ovm.mgr.ws.model.StorageInitiator",
                    "value": "storage.LocalStorageInitiator in 03:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09",
                    "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/StorageInitiator/storage.LocalStorageInitiator%20in%2003:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09",
                    "name": "storage.LocalStorageInitiator in 03:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09"
                  }
                ],
                "storageElementIds": [
                  {
                    "type": "com.oracle.ovm.mgr.ws.model.StorageElement",
                    "value": "0004fb00001800003ca68d467de2fe48",
                    "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/StorageElement/0004fb00001800003ca68d467de2fe48",
                    "name": "350014ee65ae7247a"
                  },
                  {
                    "type": "com.oracle.ovm.mgr.ws.model.StorageElement",
                    "value": "0004fb0000180000a2a5409294f4eb35",
                    "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/StorageElement/0004fb0000180000a2a5409294f4eb35",
                    "name": "OVM_SYS_REPO_PART_35002538da0269d57"
                  }
                ],
                "refreshFileServerIds": [],
                "accessGroupIds": [],
                "localFileServerId": {
                  "type": "com.oracle.ovm.mgr.ws.model.FileServer",
                  "value": "0004fb0000090000b2906e6e2750ffc9",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/FileServer/0004fb0000090000b2906e6e2750ffc9",
                  "name": "Local FS oracle-vm-server"
                },
                "serverAbilities": {
                  "cluster": true,
                  "nfs": true,
                  "fibreChannel": true,
                  "highAvailability": true,
                  "vmSuspend": true,
                  "perVmCpuOverSubscribe": true,
                  "allVmCpuOverSubscribe": true,
                  "bondModeActiveBackup": true,
                  "bondModeLinkAggregation": true,
                  "bondModeAdaptiveLoadBalancing": true,
                  "mtuConfiguration": true,
                  "localStorageElement": true,
                  "vmMemoryAlignment": 1048576,
                  "vncConsole": true,
                  "serialConsole": true,
                  "migrationSetup": false,
                  "hvmMaxVnics": 8,
                  "serverPackageUpdate": true,
                  "powerOnWOL": true,
                  "repositoryOnSharedDisk": true,
                  "repositoryOnLocalDisk": true,
                  "clusterFsOnPhysicalDisk": true,
                  "vmEmptyCdrom": true,
                  "iScsi": true
                },
                "serverUpToDate": true,
                "rebootOnUpgrade": true,
                "protected": false
              }
            ]
          JSON
          response
        end
      end
    end
  end
end

