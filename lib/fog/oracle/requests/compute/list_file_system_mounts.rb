module Fog
  module Compute
    class Oracle
      class Real
        def list_file_system_mounts()
          request(
            :expects  => [200],
            :method   => 'GET',
            :path     => 'FileSystemMount',
          )
        end
      end

      class Mock
        include Fog::Oracle::JsonUtils

        def list_file_system_mounts()
          response = Excon::Response.new
          response.status = 200
          response.body = json_decode <<-JSON
            [
              {
                "id": {
                  "type": "com.oracle.ovm.mgr.ws.model.FileSystemMount",
                  "value": "03:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09_mount_/OVS/Repositories/0004fb00000300003076225fcb290271",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/FileSystemMount/03:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09_mount_%2FOVS%2FRepositories%2F0004fb00000300003076225fcb290271",
                  "name": "oracle-vm-server_/OVS/Repositories/0004fb00000300003076225fcb290271"
                },
                "name": "oracle-vm-server_/OVS/Repositories/0004fb00000300003076225fcb290271",
                "description": "",
                "locked": false,
                "readOnly": false,
                "generation": 0,
                "userData": [],
                "resourceGroupIds": [],
                "serverId": {
                  "type": "com.oracle.ovm.mgr.ws.model.Server",
                  "value": "03:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/Server/03:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09",
                  "name": "oracle-vm-server"
                },
                "fileSystemId": {
                  "type": "com.oracle.ovm.mgr.ws.model.FileSystem",
                  "value": "0004fb00000500003a887e2393804ccb",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/FileSystem/0004fb00000500003a887e2393804ccb",
                  "name": null
                },
                "absolutePath": "/OVS/Repositories/0004fb00000300003076225fcb290271",
                "sharePath": "",
                "options": null
              }
            ]
          JSON
          response
        end
      end
    end
  end
end

