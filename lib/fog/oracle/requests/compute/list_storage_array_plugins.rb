module Fog
  module Compute
    class Oracle
      class Real
        def list_storage_array_plugins()
          request(
            :expects  => [200],
            :method   => 'GET',
            :path     => 'StorageArrayPlugin',
          )
        end
      end

      class Mock
        include Fog::Oracle::JsonUtils

        def list_storage_array_plugins()
          response = Excon::Response.new
          response.status = 200
          response.body = json_decode <<-JSON
            [
              {
                "id": {
                  "type": "com.oracle.ovm.mgr.ws.model.StorageArrayPlugin",
                  "value": "oracle.generic.SCSIPlugin.GenericPlugin (1.1.0)",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/StorageArrayPlugin/oracle.generic.SCSIPlugin.GenericPlugin%20(1.1.0)",
                  "name": "Oracle Generic SCSI Plugin"
                },
                "name": "Oracle Generic SCSI Plugin",
                "description": "Oracle Storage Connect Plugin for Generic FC and iSCSI",
                "locked": false,
                "readOnly": false,
                "generation": 0,
                "userData": [],
                "resourceGroupIds": [],
                "storageArrayIds": [
                  {
                    "type": "com.oracle.ovm.mgr.ws.model.StorageArray",
                    "value": "Unmanaged FibreChannel Storage Array",
                    "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/StorageArray/Unmanaged%20FibreChannel%20Storage%20Array",
                    "name": "Unmanaged FibreChannel Storage Array"
                  },
                  {
                    "type": "com.oracle.ovm.mgr.ws.model.StorageArray",
                    "value": "Unmanaged iSCSI Storage Array",
                    "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/StorageArray/Unmanaged%20iSCSI%20Storage%20Array",
                    "name": "Unmanaged iSCSI Storage Array"
                  },
                  {
                    "type": "com.oracle.ovm.mgr.ws.model.StorageArray",
                    "value": "0004fb000009000022fbc1cfc5f3deaf",
                    "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/StorageArray/0004fb000009000022fbc1cfc5f3deaf",
                    "name": "Generic Local Storage Array @ oracle-vm-server"
                  }
                ],
                "serverIds": [
                  {
                    "type": "com.oracle.ovm.mgr.ws.model.Server",
                    "value": "03:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09",
                    "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/Server/03:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09",
                    "name": "oracle-vm-server"
                  }
                ],
                "storageTypes": [
                  "FIBRECHANNEL",
                  "ISCSI"
                ],
                "storageAbilityRecords": [
                  {
                    "ability": "CLONE",
                    "value": "UNSUPPORTED"
                  },
                  {
                    "ability": "CLONE_CUSTOM_NAME",
                    "value": "UNSUPPORTED"
                  },
                  {
                    "ability": "STORAGE_NAME_REQUIRED",
                    "value": "UNSUPPORTED"
                  },
                  {
                    "ability": "CLONE_SPLITTING",
                    "value": "UNSUPPORTED"
                  },
                  {
                    "ability": "SNAPSHOT_CLONE",
                    "value": "UNSUPPORTED"
                  },
                  {
                    "ability": "SNAPSHOT_CLONE_SYNCHRONOUS",
                    "value": "UNSUPPORTED"
                  },
                  {
                    "ability": "SNAPSHOT_SYNCHRONOUS",
                    "value": "UNSUPPORTED"
                  },
                  {
                    "ability": "CLONE_SYNCHRONOUS",
                    "value": "UNSUPPORTED"
                  },
                  {
                    "ability": "RESIZE",
                    "value": "UNSUPPORTED"
                  },
                  {
                    "ability": "CLONE_SPLITTING_SYNCHRONOUS",
                    "value": "UNSUPPORTED"
                  },
                  {
                    "ability": "SNAPSHOT_CUSTOM_NAME",
                    "value": "UNSUPPORTED"
                  },
                  {
                    "ability": "SNAPSHOT",
                    "value": "UNSUPPORTED"
                  },
                  {
                    "ability": "ACCESS_CONTROL",
                    "value": "NO"
                  },
                  {
                    "ability": "RESIZE_SYNCHRONOUS",
                    "value": "UNSUPPORTED"
                  }
                ],
                "pluginName": "Oracle Generic SCSI Plugin",
                "pluginDescription": "Oracle Storage Connect Plugin for Generic FC and iSCSI",
                "pluginVendor": "Oracle",
                "pluginVersion": "1.1.0",
                "pluginMaxAccessGroupEntries": 0,
                "genericPlugin": true,
                "clusterRequired": false,
                "storageElementExtraInfoHelp": null,
                "storageArrayExtraInfoHelp": null,
                "singleAccessHostOnly": false
              }
            ]
          JSON
          response
        end
      end
    end
  end
end

