module Fog
  module Compute
    class Oracle
      class Real
        def get_file_server_plugin(id)
          request(
            :expects  => [200],
            :method   => 'GET',
            :path     => "FileServerPlugin/#{escape(id)}",
          )
        end
      end

      class Mock
        include Fog::Oracle::JsonUtils

        def get_file_server_plugin(id)
          response = Excon::Response.new
          response.status = 200
          response.body = json_decode <<-JSON
            {
              "id": {
                "type": "com.oracle.ovm.mgr.ws.model.FileServerPlugin",
                "value": "oracle.ocfs2.OCFS2.OCFS2Plugin (0.1.0-42.1)",
                "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/FileServerPlugin/oracle.ocfs2.OCFS2.OCFS2Plugin%20(0.1.0-42.1)",
                "name": "Oracle OCFS2 File system"
              },
              "name": "Oracle OCFS2 File system",
              "description": "Oracle OCFS2 File system Storage Connect Plugin",
              "locked": false,
              "readOnly": false,
              "generation": 0,
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
              "serverIds": [
                {
                  "type": "com.oracle.ovm.mgr.ws.model.Server",
                  "value": "03:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/Server/03:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09",
                  "name": "oracle-vm-server"
                }
              ],
              "storageAbilityRecords": [
                {
                  "ability": "CLONE",
                  "value": "FULLY_SUPPORTED"
                },
                {
                  "ability": "CLONE_CUSTOM_NAME",
                  "value": "YES"
                },
                {
                  "ability": "CLONE_SPLITTING_WHILE_OPEN",
                  "value": "NO"
                },
                {
                  "ability": "STORAGE_NAME_REQUIRED",
                  "value": "NO"
                },
                {
                  "ability": "CLONE_SPLITTING",
                  "value": "UNSUPPORTED"
                },
                {
                  "ability": "SNAPSHOT_CLONE",
                  "value": "FULLY_SUPPORTED"
                },
                {
                  "ability": "SNAPSHOT_CLONE_SYNCHRONOUS",
                  "value": "YES"
                },
                {
                  "ability": "SNAPSHOT_SYNCHRONOUS",
                  "value": "YES"
                },
                {
                  "ability": "CLONE_SYNCHRONOUS",
                  "value": "YES"
                },
                {
                  "ability": "RESIZE",
                  "value": "FULLY_SUPPORTED"
                },
                {
                  "ability": "CLONE_SPLITTING_SYNCHRONOUS",
                  "value": "NO"
                },
                {
                  "ability": "SNAPSHOT_CUSTOM_NAME",
                  "value": "YES"
                },
                {
                  "ability": "SNAPSHOT",
                  "value": "FULLY_SUPPORTED"
                },
                {
                  "ability": "ACCESS_CONTROL",
                  "value": "NO"
                },
                {
                  "ability": "RESIZE_SYNCHRONOUS",
                  "value": "YES"
                }
              ],
              "pluginName": "Oracle OCFS2 File system",
              "pluginDescription": "Oracle OCFS2 File system Storage Connect Plugin",
              "pluginVendor": "Oracle",
              "pluginVersion": "0.1.0-42.1",
              "genericPlugin": false,
              "clusterRequired": true,
              "extraInfoHelpText": null,
              "backingDeviceType": "LOCALDEVICE_SINGLE"
            }
          JSON
          response
        end
      end
    end
  end
end

