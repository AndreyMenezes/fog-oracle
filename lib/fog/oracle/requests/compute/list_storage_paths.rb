module Fog
  module Compute
    class Oracle
      class Real
        def list_storage_paths()
          request(
            :expects  => [200],
            :method   => 'GET',
            :path     => 'StoragePath',
          )
        end
      end

      class Mock
        include Fog::Oracle::JsonUtils

        def list_storage_paths()
          response = Excon::Response.new
          response.status = 200
          response.body = json_decode <<-JSON
            [
              {
                "id": {
                  "type": "com.oracle.ovm.mgr.ws.model.StoragePath",
                  "value": "0004fb00002800002b75d6956af23490",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/StoragePath/0004fb00002800002b75d6956af23490",
                  "name": "storage.LocalStorageInitiator in 03:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09 (OVM_SYS_REPO_PART_35002538da0269d57)"
                },
                "name": "storage.LocalStorageInitiator in 03:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09 (OVM_SYS_REPO_PART_35002538da0269d57)",
                "description": "",
                "locked": false,
                "readOnly": false,
                "generation": 0,
                "userData": [],
                "resourceGroupIds": [],
                "storageInitiatorId": {
                  "type": "com.oracle.ovm.mgr.ws.model.StorageInitiator",
                  "value": "storage.LocalStorageInitiator in 03:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/StorageInitiator/storage.LocalStorageInitiator%20in%2003:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09",
                  "name": "storage.LocalStorageInitiator in 03:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09"
                },
                "storageTargetId": null,
                "storageElementId": {
                  "type": "com.oracle.ovm.mgr.ws.model.StorageElement",
                  "value": "0004fb0000180000a2a5409294f4eb35",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/StorageElement/0004fb0000180000a2a5409294f4eb35",
                  "name": "OVM_SYS_REPO_PART_35002538da0269d57"
                },
                "scsiDeviceId": null,
                "multipathDevice": null,
                "ipAddress": null,
                "pathState": "PATH_UP"
              },
              {
                "id": {
                  "type": "com.oracle.ovm.mgr.ws.model.StoragePath",
                  "value": "0004fb000028000024c3d48e6c823308",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/StoragePath/0004fb000028000024c3d48e6c823308",
                  "name": "storage.LocalStorageInitiator in 03:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09 (350014ee65ae7247a)"
                },
                "name": "storage.LocalStorageInitiator in 03:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09 (350014ee65ae7247a)",
                "description": "",
                "locked": false,
                "readOnly": false,
                "generation": 0,
                "userData": [],
                "resourceGroupIds": [],
                "storageInitiatorId": {
                  "type": "com.oracle.ovm.mgr.ws.model.StorageInitiator",
                  "value": "storage.LocalStorageInitiator in 03:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/StorageInitiator/storage.LocalStorageInitiator%20in%2003:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09",
                  "name": "storage.LocalStorageInitiator in 03:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09"
                },
                "storageTargetId": null,
                "storageElementId": {
                  "type": "com.oracle.ovm.mgr.ws.model.StorageElement",
                  "value": "0004fb00001800003ca68d467de2fe48",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/StorageElement/0004fb00001800003ca68d467de2fe48",
                  "name": "350014ee65ae7247a"
                },
                "scsiDeviceId": null,
                "multipathDevice": null,
                "ipAddress": null,
                "pathState": "PATH_UP"
              }
            ]
          JSON
          response
        end
      end
    end
  end
end

