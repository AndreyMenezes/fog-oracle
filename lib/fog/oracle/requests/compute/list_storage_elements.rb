module Fog
  module Compute
    class Oracle
      class Real
        def list_storage_elements()
          request(
            :expects  => [200],
            :method   => 'GET',
            :path     => 'StorageElement',
          )
        end
      end

      class Mock
        include Fog::Oracle::JsonUtils

        def list_storage_elements()
          response = Excon::Response.new
          response.status = 200
          response.body = json_decode <<-JSON
            [
              {
                "id": {
                  "type": "com.oracle.ovm.mgr.ws.model.StorageElement",
                  "value": "0004fb0000180000a2a5409294f4eb35",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/StorageElement/0004fb0000180000a2a5409294f4eb35",
                  "name": "OVM_SYS_REPO_PART_35002538da0269d57"
                },
                "name": "OVM_SYS_REPO_PART_35002538da0269d57",
                "description": "Samsung_SSD_850",
                "locked": false,
                "readOnly": false,
                "generation": 1,
                "userData": [],
                "resourceGroupIds": [],
                "accessGroupIds": [],
                "fileSystemIds": [
                  {
                    "type": "com.oracle.ovm.mgr.ws.model.FileSystem",
                    "value": "0004fb00000500003a887e2393804ccb",
                    "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/FileSystem/0004fb00000500003a887e2393804ccb",
                    "name": null
                  }
                ],
                "storagePathIds": [
                  {
                    "type": "com.oracle.ovm.mgr.ws.model.StoragePath",
                    "value": "0004fb00002800002b75d6956af23490",
                    "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/StoragePath/0004fb00002800002b75d6956af23490",
                    "name": "storage.LocalStorageInitiator in 03:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09 (OVM_SYS_REPO_PART_35002538da0269d57)"
                  }
                ],
                "reservingServerIds": [],
                "vmDiskMappingIds": [],
                "volumeGroupId": {
                  "type": "com.oracle.ovm.mgr.ws.model.VolumeGroup",
                  "value": "0004fb0000320000421c09640bba4393",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/VolumeGroup/0004fb0000320000421c09640bba4393",
                  "name": "Local Storage Volume Group"
                },
                "clusterHeartbeatDeviceId": null,
                "deviceNames": [],
                "extraInformation": "",
                "page83Id": "OVM_SYS_REPO_PART_35002538da0269d57",
                "qos": null,
                "serverReserved": false,
                "shareable": false,
                "size": 187709784064,
                "state": "UNKNOWN",
                "status": null,
                "storageTargetNames": [],
                "thinProvision": false,
                "type": "LUN",
                "userFriendlyName": null,
                "vendor": "ATA"
              },
              {
                "id": {
                  "type": "com.oracle.ovm.mgr.ws.model.StorageElement",
                  "value": "0004fb00001800003ca68d467de2fe48",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/StorageElement/0004fb00001800003ca68d467de2fe48",
                  "name": "350014ee65ae7247a"
                },
                "name": "350014ee65ae7247a",
                "description": "WDC WD2003FZEX-0",
                "locked": false,
                "readOnly": false,
                "generation": 0,
                "userData": [],
                "resourceGroupIds": [],
                "accessGroupIds": [],
                "fileSystemIds": [],
                "storagePathIds": [
                  {
                    "type": "com.oracle.ovm.mgr.ws.model.StoragePath",
                    "value": "0004fb000028000024c3d48e6c823308",
                    "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/StoragePath/0004fb000028000024c3d48e6c823308",
                    "name": "storage.LocalStorageInitiator in 03:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09 (350014ee65ae7247a)"
                  }
                ],
                "reservingServerIds": [],
                "vmDiskMappingIds": [],
                "volumeGroupId": {
                  "type": "com.oracle.ovm.mgr.ws.model.VolumeGroup",
                  "value": "0004fb0000320000421c09640bba4393",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/VolumeGroup/0004fb0000320000421c09640bba4393",
                  "name": "Local Storage Volume Group"
                },
                "clusterHeartbeatDeviceId": null,
                "deviceNames": [],
                "extraInformation": "",
                "page83Id": "350014ee65ae7247a",
                "qos": null,
                "serverReserved": false,
                "shareable": false,
                "size": 2000398934016,
                "state": "UNKNOWN",
                "status": null,
                "storageTargetNames": [],
                "thinProvision": false,
                "type": "LUN",
                "userFriendlyName": null,
                "vendor": "ATA"
              }
            ]
          JSON
          response
        end
      end
    end
  end
end

