module Fog
  module Compute
    class Oracle
      class Real
        def get_file_server(id)
          request(
            :expects  => [200],
            :method   => 'GET',
            :path     => "FileServer/#{escape(id)}",
          )
        end
      end

      class Mock
        include Fog::Oracle::JsonUtils

        def get_file_server(id)
          response = Excon::Response.new
          response.status = 200
          response.body = json_decode <<-JSON
            {
              "id": {
                "type": "com.oracle.ovm.mgr.ws.model.FileServer",
                "value": "0004fb0000090000b2906e6e2750ffc9",
                "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/FileServer/0004fb0000090000b2906e6e2750ffc9",
                "name": "Local FS oracle-vm-server"
              },
              "name": "Local FS oracle-vm-server",
              "description": "",
              "locked": false,
              "readOnly": false,
              "generation": 9,
              "userData": [],
              "resourceGroupIds": [],
              "fileSystemIds": [
                {
                  "type": "com.oracle.ovm.mgr.ws.model.FileSystem",
                  "value": "0004fb00000500003a887e2393804ccb",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/FileSystem/0004fb00000500003a887e2393804ccb",
                  "name": null
                }
              ],
              "fileServerType": "LOCAL",
              "zoneIds": [],
              "fileServerPluginId": {
                "type": "com.oracle.ovm.mgr.ws.model.FileServerPlugin",
                "value": "oracle.ocfs2.OCFS2.OCFS2Plugin (0.1.0-42.1)",
                "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/FileServerPlugin/oracle.ocfs2.OCFS2.OCFS2Plugin%20(0.1.0-42.1)",
                "name": "Oracle OCFS2 File system"
              },
              "accessHost": "",
              "storageDescription": null,
              "adminServerIds": [
                {
                  "type": "com.oracle.ovm.mgr.ws.model.Server",
                  "value": "03:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/Server/03:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09",
                  "name": "oracle-vm-server"
                }
              ],
              "serverId": {
                "type": "com.oracle.ovm.mgr.ws.model.Server",
                "value": "03:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09",
                "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/Server/03:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09",
                "name": "oracle-vm-server"
              },
              "refreshServerIds": null,
              "accessGroupIds": null,
              "uniformExports": null
            }
          JSON
          response
        end
      end
    end
  end
end

