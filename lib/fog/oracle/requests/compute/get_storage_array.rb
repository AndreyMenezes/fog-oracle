module Fog
  module Compute
    class Oracle
      class Real
        def get_storage_array(id)
          request(
            :expects  => [200],
            :method   => 'GET',
            :path     => "StorageArray/#{escape(id)}",
          )
        end
      end

      class Mock
        include Fog::Oracle::JsonUtils

        def get_storage_array(id)
          response = Excon::Response.new
          response.status = 200
          response.body = json_decode <<-JSON
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
            }
          JSON
          response
        end
      end
    end
  end
end

