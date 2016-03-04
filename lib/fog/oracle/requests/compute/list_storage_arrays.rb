module Fog
  module Compute
    class Oracle
      class Real
        def list_storage_arrays()
          request(
            :expects  => [200],
            :method   => 'GET',
            :path     => 'StorageArray',
          )
        end
      end

      class Mock
        include Fog::Oracle::JsonUtils

        def list_storage_arrays()
          response = Excon::Response.new
          response.status = 200
          response.body = json_decode <<-JSON
            [
              {
                "id": {
                  "type": "com.oracle.ovm.mgr.ws.model.StorageArray",
                  "value": "Unmanaged iSCSI Storage Array",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/StorageArray/Unmanaged%20iSCSI%20Storage%20Array",
                  "name": "Unmanaged iSCSI Storage Array"
                },
                "name": "Unmanaged iSCSI Storage Array",
                "description": "",
                "locked": false,
                "readOnly": false,
                "generation": 0,
                "userData": [],
                "resourceGroupIds": [],
                "zoneIds": [],
                "accessGroupIds": [],
                "storageArrayPluginId": {
                  "type": "com.oracle.ovm.mgr.ws.model.StorageArrayPlugin",
                  "value": "oracle.generic.SCSIPlugin.GenericPlugin (1.1.0)",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/StorageArrayPlugin/oracle.generic.SCSIPlugin.GenericPlugin%20(1.1.0)",
                  "name": "Oracle Generic SCSI Plugin"
                },
                "adminServerIds": [],
                "volumeGroupIds": [
                  {
                    "type": "com.oracle.ovm.mgr.ws.model.VolumeGroup",
                    "value": "0004fb000032000016113711f641fd5d",
                    "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/VolumeGroup/0004fb000032000016113711f641fd5d",
                    "name": "iSCSI Volume Group"
                  }
                ],
                "serverId": null,
                "adminHostname": "",
                "adminUsername": "",
                "adminPassword": "****************",
                "status": null,
                "totalSize": -1,
                "usedSize": -1,
                "freeSize": -1,
                "allocatedSize": -1,
                "storageDescription": null,
                "extraInformation": null,
                "qosValues": [],
                "validated": true,
                "defaultArray": true,
                "storageName": null,
                "knownStorageNames": [],
                "storageType": "ISCSI",
                "accessHosts": [],
                "useChap": false
              },
              {
                "id": {
                  "type": "com.oracle.ovm.mgr.ws.model.StorageArray",
                  "value": "Unmanaged FibreChannel Storage Array",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/StorageArray/Unmanaged%20FibreChannel%20Storage%20Array",
                  "name": "Unmanaged FibreChannel Storage Array"
                },
                "name": "Unmanaged FibreChannel Storage Array",
                "description": "",
                "locked": false,
                "readOnly": false,
                "generation": 0,
                "userData": [],
                "resourceGroupIds": [],
                "zoneIds": [],
                "accessGroupIds": [],
                "storageArrayPluginId": {
                  "type": "com.oracle.ovm.mgr.ws.model.StorageArrayPlugin",
                  "value": "oracle.generic.SCSIPlugin.GenericPlugin (1.1.0)",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/StorageArrayPlugin/oracle.generic.SCSIPlugin.GenericPlugin%20(1.1.0)",
                  "name": "Oracle Generic SCSI Plugin"
                },
                "adminServerIds": [],
                "volumeGroupIds": [
                  {
                    "type": "com.oracle.ovm.mgr.ws.model.VolumeGroup",
                    "value": "0004fb0000320000d2f0672a5b606681",
                    "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/VolumeGroup/0004fb0000320000d2f0672a5b606681",
                    "name": "FibreChannel Volume Group"
                  }
                ],
                "serverId": null,
                "adminHostname": "",
                "adminUsername": "",
                "adminPassword": "****************",
                "status": null,
                "totalSize": -1,
                "usedSize": -1,
                "freeSize": -1,
                "allocatedSize": -1,
                "storageDescription": null,
                "extraInformation": null,
                "qosValues": [],
                "validated": true,
                "defaultArray": true,
                "storageName": null,
                "knownStorageNames": [],
                "storageType": "FIBRECHANNEL",
                "accessHosts": null,
                "useChap": null
              },
              {
                "id": {
                  "type": "com.oracle.ovm.mgr.ws.model.StorageArray",
                  "value": "0004fb000009000022fbc1cfc5f3deaf",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/StorageArray/0004fb000009000022fbc1cfc5f3deaf",
                  "name": "Generic Local Storage Array @ oracle-vm-server"
                },
                "name": "Generic Local Storage Array @ oracle-vm-server",
                "description": "",
                "locked": false,
                "readOnly": false,
                "generation": 0,
                "userData": [],
                "resourceGroupIds": [],
                "zoneIds": [],
                "accessGroupIds": [],
                "storageArrayPluginId": {
                  "type": "com.oracle.ovm.mgr.ws.model.StorageArrayPlugin",
                  "value": "oracle.generic.SCSIPlugin.GenericPlugin (1.1.0)",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/StorageArrayPlugin/oracle.generic.SCSIPlugin.GenericPlugin%20(1.1.0)",
                  "name": "Oracle Generic SCSI Plugin"
                },
                "adminServerIds": [
                  {
                    "type": "com.oracle.ovm.mgr.ws.model.Server",
                    "value": "03:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09",
                    "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/Server/03:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09",
                    "name": "oracle-vm-server"
                  }
                ],
                "volumeGroupIds": [
                  {
                    "type": "com.oracle.ovm.mgr.ws.model.VolumeGroup",
                    "value": "0004fb0000320000421c09640bba4393",
                    "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/VolumeGroup/0004fb0000320000421c09640bba4393",
                    "name": "Local Storage Volume Group"
                  }
                ],
                "serverId": {
                  "type": "com.oracle.ovm.mgr.ws.model.Server",
                  "value": "03:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/Server/03:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09",
                  "name": "oracle-vm-server"
                },
                "adminHostname": "",
                "adminUsername": "",
                "adminPassword": "****************",
                "status": null,
                "totalSize": -1,
                "usedSize": -1,
                "freeSize": -1,
                "allocatedSize": -1,
                "storageDescription": null,
                "extraInformation": null,
                "qosValues": [],
                "validated": true,
                "defaultArray": false,
                "storageName": null,
                "knownStorageNames": [],
                "storageType": "LOCAL",
                "accessHosts": null,
                "useChap": null
              }
            ]
          JSON
          response
        end
      end
    end
  end
end

