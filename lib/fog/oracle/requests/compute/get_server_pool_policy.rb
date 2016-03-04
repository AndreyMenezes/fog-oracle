module Fog
  module Compute
    class Oracle
      class Real
        def get_server_pool_policy(id)
          request(
            :expects  => [200],
            :method   => 'GET',
            :path     => "ServerPoolPolicy/#{escape(id)}",
          )
        end
      end

      class Mock
        include Fog::Oracle::JsonUtils

        def get_server_pool_policy(id)
          response = Excon::Response.new
          response.status = 200
          response.body = json_decode <<-JSON
            {
              "id": {
                "type": "com.oracle.ovm.mgr.ws.model.ServerPoolPolicy",
                "value": "balancer_0004fb0000020000b5995e9c15a0a4a5",
                "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/ServerPoolPolicy/balancer_0004fb0000020000b5995e9c15a0a4a5",
                "name": null
              },
              "name": "",
              "description": "",
              "locked": false,
              "readOnly": false,
              "generation": 0,
              "userData": [],
              "resourceGroupIds": [],
              "mode": "OFF",
              "cpuEnable": false,
              "periodMinutes": 10,
              "cpuThreshold": 75,
              "serverIds": [],
              "serverPoolNetworkPolicyIds": [],
              "serverPoolId": {
                "type": "com.oracle.ovm.mgr.ws.model.ServerPool",
                "value": "0004fb0000020000b5995e9c15a0a4a5",
                "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/ServerPool/0004fb0000020000b5995e9c15a0a4a5",
                "name": "test-pool"
              }
            }
          JSON
          response
        end
      end
    end
  end
end

