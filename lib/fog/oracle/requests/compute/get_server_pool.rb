module Fog
  module Compute
    class Oracle
      class Real
        def get_server_pool(id)
          request(
            :expects  => [200],
            :method   => 'GET',
            :path     => "ServerPool/#{escape(id)}",
          )
        end
      end

      class Mock
        include Fog::Oracle::JsonUtils

        def get_server_pool(id)
          response = Excon::Response.new
          response.status = 200
          response.body = json_decode <<-JSON
            {
              "id": {
                "type": "com.oracle.ovm.mgr.ws.model.ServerPool",
                "value": "0004fb0000020000b5995e9c15a0a4a5",
                "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/ServerPool/0004fb0000020000b5995e9c15a0a4a5",
                "name": "test-pool"
              },
              "name": "test-pool",
              "description": "",
              "locked": false,
              "readOnly": false,
              "generation": 8,
              "userData": [],
              "resourceGroupIds": [],
              "serverIds": [
                {
                  "type": "com.oracle.ovm.mgr.ws.model.Server",
                  "value": "03:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/Server/03:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09",
                  "name": "oracle-vm-server"
                }
              ],
              "masterServerId": {
                "type": "com.oracle.ovm.mgr.ws.model.Server",
                "value": "03:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09",
                "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/Server/03:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09",
                "name": "oracle-vm-server"
              },
              "affinityGroupIds": [],
              "vmIds": [
                {
                  "type": "com.oracle.ovm.mgr.ws.model.Vm",
                  "value": "0004fb00000600002d441b5e6431b729",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/Vm/0004fb00000600002d441b5e6431b729",
                  "name": "test"
                },
                {
                  "type": "com.oracle.ovm.mgr.ws.model.Vm",
                  "value": "0004fb0000060000fae47dddca76434d",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/Vm/0004fb0000060000fae47dddca76434d",
                  "name": "test2.0"
                },
                {
                  "type": "com.oracle.ovm.mgr.ws.model.Vm",
                  "value": "0004fb00000600006f8e65a5d245ea0c",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/Vm/0004fb00000600006f8e65a5d245ea0c",
                  "name": "Test3.0"
                },
                {
                  "type": "com.oracle.ovm.mgr.ws.model.Vm",
                  "value": "0004fb0000060000048aa9b21a891dc1",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/Vm/0004fb0000060000048aa9b21a891dc1",
                  "name": "Test4.0"
                }
              ],
              "unassignedVmIds": [],
              "clusterId": null,
              "virtualIp": "172.16.92.65",
              "keymap": "en-us",
              "secureVmMigrate": false,
              "serverPoolPolicyId": {
                "type": "com.oracle.ovm.mgr.ws.model.ServerPoolPolicy",
                "value": "balancer_0004fb0000020000b5995e9c15a0a4a5",
                "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/ServerPoolPolicy/balancer_0004fb0000020000b5995e9c15a0a4a5",
                "name": null
              },
              "zoneId": null,
              "vmStartPolicy": "BEST_SERVER",
              "serverUpdateConfigurationId": null
            }
          JSON
          response
        end
      end
    end
  end
end

