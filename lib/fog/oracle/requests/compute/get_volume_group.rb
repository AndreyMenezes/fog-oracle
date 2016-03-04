module Fog
  module Compute
    class Oracle
      class Real
        def get_volume_group(id)
          request(
            :expects  => [200],
            :method   => 'GET',
            :path     => "VolumeGroup/#{escape(id)}",
          )
        end
      end

      class Mock
        include Fog::Oracle::JsonUtils

        def get_volume_group(id)
          response = Excon::Response.new
          response.status = 200
          response.body = json_decode <<-JSON
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
            }
          JSON
          response
        end
      end
    end
  end
end

