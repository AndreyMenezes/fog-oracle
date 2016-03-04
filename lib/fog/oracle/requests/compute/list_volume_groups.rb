module Fog
  module Compute
    class Oracle
      class Real
        def list_volume_groups()
          request(
            :expects  => [200],
            :method   => 'GET',
            :path     => 'VolumeGroup',
          )
        end
      end

      class Mock
        include Fog::Oracle::JsonUtils

        def list_volume_groups()
          response = Excon::Response.new
          response.status = 200
          response.body = json_decode <<-JSON
            [
              {
                "id": {
                  "type": "com.oracle.ovm.mgr.ws.model.VolumeGroup",
                  "value": "0004fb0000320000d2f0672a5b606681",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/VolumeGroup/0004fb0000320000d2f0672a5b606681",
                  "name": "FibreChannel Volume Group"
                },
                "name": "FibreChannel Volume Group",
                "description": "",
                "locked": false,
                "readOnly": false,
                "generation": 0,
                "userData": [],
                "resourceGroupIds": [],
                "storageArrayId": {
                  "type": "com.oracle.ovm.mgr.ws.model.StorageArray",
                  "value": "Unmanaged FibreChannel Storage Array",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/StorageArray/Unmanaged%20FibreChannel%20Storage%20Array",
                  "name": "Unmanaged FibreChannel Storage Array"
                },
                "storageElementIds": [],
                "totalSize": 0,
                "usedSize": 0,
                "freeSize": 0,
                "allocatedSize": 0,
                "volumeDescription": null,
                "nameOnArray": "Generic_SAN_Volume_Group"
              },
              {
                "id": {
                  "type": "com.oracle.ovm.mgr.ws.model.VolumeGroup",
                  "value": "0004fb0000320000421c09640bba4393",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/VolumeGroup/0004fb0000320000421c09640bba4393",
                  "name": "Local Storage Volume Group"
                },
                "name": "Local Storage Volume Group",
                "description": "",
                "locked": false,
                "readOnly": false,
                "generation": 1,
                "userData": [],
                "resourceGroupIds": [],
                "storageArrayId": {
                  "type": "com.oracle.ovm.mgr.ws.model.StorageArray",
                  "value": "0004fb000009000022fbc1cfc5f3deaf",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/StorageArray/0004fb000009000022fbc1cfc5f3deaf",
                  "name": "Generic Local Storage Array @ oracle-vm-server"
                },
                "storageElementIds": [
                  {
                    "type": "com.oracle.ovm.mgr.ws.model.StorageElement",
                    "value": "0004fb0000180000a2a5409294f4eb35",
                    "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/StorageElement/0004fb0000180000a2a5409294f4eb35",
                    "name": "OVM_SYS_REPO_PART_35002538da0269d57"
                  },
                  {
                    "type": "com.oracle.ovm.mgr.ws.model.StorageElement",
                    "value": "0004fb00001800003ca68d467de2fe48",
                    "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/StorageElement/0004fb00001800003ca68d467de2fe48",
                    "name": "350014ee65ae7247a"
                  }
                ],
                "totalSize": 0,
                "usedSize": 0,
                "freeSize": 0,
                "allocatedSize": 0,
                "volumeDescription": null,
                "nameOnArray": "Local_Storage_Volume_Group"
              },
              {
                "id": {
                  "type": "com.oracle.ovm.mgr.ws.model.VolumeGroup",
                  "value": "0004fb000032000016113711f641fd5d",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/VolumeGroup/0004fb000032000016113711f641fd5d",
                  "name": "iSCSI Volume Group"
                },
                "name": "iSCSI Volume Group",
                "description": "",
                "locked": false,
                "readOnly": false,
                "generation": 0,
                "userData": [],
                "resourceGroupIds": [],
                "storageArrayId": {
                  "type": "com.oracle.ovm.mgr.ws.model.StorageArray",
                  "value": "Unmanaged iSCSI Storage Array",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/StorageArray/Unmanaged%20iSCSI%20Storage%20Array",
                  "name": "Unmanaged iSCSI Storage Array"
                },
                "storageElementIds": [],
                "totalSize": 0,
                "usedSize": 0,
                "freeSize": 0,
                "allocatedSize": 0,
                "volumeDescription": null,
                "nameOnArray": "Generic_iSCSI_Volume_Group"
              }
            ]
          JSON
          response
        end
      end
    end
  end
end

