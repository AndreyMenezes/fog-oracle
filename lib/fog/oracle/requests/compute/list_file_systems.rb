module Fog
  module Compute
    class Oracle
      class Real
        def list_file_systems()
          request(
            :expects  => [200],
            :method   => 'GET',
            :path     => 'FileSystem',
          )
        end
      end

      class Mock
        include Fog::Oracle::JsonUtils

        def list_file_systems()
          response = Excon::Response.new
          response.status = 200
          response.body = json_decode <<-JSON
            [
              {
                "id": {
                  "type": "com.oracle.ovm.mgr.ws.model.FileSystem",
                  "value": "0004fb00000500003a887e2393804ccb",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/FileSystem/0004fb00000500003a887e2393804ccb",
                  "name": null
                },
                "name": "",
                "description": "",
                "locked": false,
                "readOnly": false,
                "generation": 19,
                "userData": [],
                "resourceGroupIds": [],
                "fileServerIds": [
                  {
                    "type": "com.oracle.ovm.mgr.ws.model.FileServer",
                    "value": "0004fb0000090000b2906e6e2750ffc9",
                    "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/FileServer/0004fb0000090000b2906e6e2750ffc9",
                    "name": "Local FS oracle-vm-server"
                  }
                ],
                "fileSystemMountIds": [
                  {
                    "type": "com.oracle.ovm.mgr.ws.model.FileSystemMount",
                    "value": "03:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09_mount_/OVS/Repositories/0004fb00000300003076225fcb290271",
                    "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/FileSystemMount/03:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09_mount_%2FOVS%2FRepositories%2F0004fb00000300003076225fcb290271",
                    "name": "oracle-vm-server_/OVS/Repositories/0004fb00000300003076225fcb290271"
                  }
                ],
                "repositoryIds": [
                  {
                    "type": "com.oracle.ovm.mgr.ws.model.Repository",
                    "value": "0004fb00000300003076225fcb290271",
                    "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/Repository/0004fb00000300003076225fcb290271",
                    "name": "test-pool"
                  }
                ],
                "storageElementId": {
                  "type": "com.oracle.ovm.mgr.ws.model.StorageElement",
                  "value": "0004fb0000180000a2a5409294f4eb35",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/StorageElement/0004fb0000180000a2a5409294f4eb35",
                  "name": "OVM_SYS_REPO_PART_35002538da0269d57"
                },
                "clusterId": null,
                "clusterHeartbeatDeviceId": null,
                "path": "/dev/mapper/OVM_SYS_REPO_PART_35002538da0269d57",
                "size": 187709784064,
                "freeSize": 169837854720,
                "refreshed": true,
                "accessGroupId": null,
                "shared": false
              }
            ]
          JSON
          response
        end
      end
    end
  end
end

