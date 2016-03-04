module Fog
  module Compute
    class Oracle
      class Real
        def list_storage_initiators()
          request(
            :expects  => [200],
            :method   => 'GET',
            :path     => 'StorageInitiator',
          )
        end
      end

      class Mock
        include Fog::Oracle::JsonUtils

        def list_storage_initiators()
          response = Excon::Response.new
          response.status = 200
          response.body = json_decode <<-JSON
            [
              {
                "id": {
                  "type": "com.oracle.ovm.mgr.ws.model.StorageInitiator",
                  "value": "storage.LocalStorageInitiator in 03:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/StorageInitiator/storage.LocalStorageInitiator%20in%2003:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09",
                  "name": "storage.LocalStorageInitiator in 03:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09"
                },
                "name": "storage.LocalStorageInitiator in 03:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09",
                "description": "",
                "locked": false,
                "readOnly": false,
                "generation": 1,
                "userData": [],
                "resourceGroupIds": [],
                "accessGroupIds": [],
                "storagePathIds": [
                  {
                    "type": "com.oracle.ovm.mgr.ws.model.StoragePath",
                    "value": "0004fb000028000024c3d48e6c823308",
                    "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/StoragePath/0004fb000028000024c3d48e6c823308",
                    "name": "storage.LocalStorageInitiator in 03:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09 (350014ee65ae7247a)"
                  },
                  {
                    "type": "com.oracle.ovm.mgr.ws.model.StoragePath",
                    "value": "0004fb00002800002b75d6956af23490",
                    "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/StoragePath/0004fb00002800002b75d6956af23490",
                    "name": "storage.LocalStorageInitiator in 03:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09 (OVM_SYS_REPO_PART_35002538da0269d57)"
                  }
                ],
                "serverId": {
                  "type": "com.oracle.ovm.mgr.ws.model.Server",
                  "value": "03:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/Server/03:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09",
                  "name": "oracle-vm-server"
                },
                "initiatorType": "LOCAL",
                "fibreChannelFabricName": null,
                "fibreChannelPortId": null,
                "fibreChannelPortType": null,
                "fibreChannelPortSpeed": null,
                "fibreChannelSupportedSpeeds": null,
                "fibreChannelNodeName": null
              },
              {
                "id": {
                  "type": "com.oracle.ovm.mgr.ws.model.StorageInitiator",
                  "value": "iqn.1988-12.com.oracle:3bd917bbbc1",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/StorageInitiator/iqn.1988-12.com.oracle:3bd917bbbc1",
                  "name": "iqn.1988-12.com.oracle:3bd917bbbc1"
                },
                "name": "iqn.1988-12.com.oracle:3bd917bbbc1",
                "description": "",
                "locked": false,
                "readOnly": false,
                "generation": 0,
                "userData": [],
                "resourceGroupIds": [],
                "accessGroupIds": [],
                "storagePathIds": [],
                "serverId": {
                  "type": "com.oracle.ovm.mgr.ws.model.Server",
                  "value": "03:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/Server/03:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09",
                  "name": "oracle-vm-server"
                },
                "initiatorType": "ISCSI",
                "fibreChannelFabricName": null,
                "fibreChannelPortId": null,
                "fibreChannelPortType": null,
                "fibreChannelPortSpeed": null,
                "fibreChannelSupportedSpeeds": null,
                "fibreChannelNodeName": null
              }
            ]
          JSON
          response
        end
      end
    end
  end
end

