module Fog
  module Compute
    class Oracle
      class Real
        def get_virtual_nic(id)
          request(
            :expects  => [200],
            :method   => 'GET',
            :path     => "VirtualNic/#{escape(id)}",
          )
        end
      end

      class Mock
        include Fog::Oracle::JsonUtils

        def get_virtual_nic(id)
          response = Excon::Response.new
          response.status = 200
          response.body = json_decode <<-JSON
            {
              "id": {
                "type": "com.oracle.ovm.mgr.ws.model.VirtualNic",
                "value": "0004fb0000070000d1272c5187d1bef0",
                "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/VirtualNic/0004fb0000070000d1272c5187d1bef0",
                "name": "00:21:f6:0f:d6:2c"
              },
              "name": "00:21:f6:0f:d6:2c",
              "description": "",
              "locked": false,
              "readOnly": false,
              "generation": 2,
              "userData": [],
              "resourceGroupIds": [],
              "macAddress": "00:21:f6:0f:d6:2c",
              "ipAddresses": [],
              "interfaceName": "",
              "vmId": {
                "type": "com.oracle.ovm.mgr.ws.model.Vm",
                "value": "0004fb00000600006f8e65a5d245ea0c",
                "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/Vm/0004fb00000600006f8e65a5d245ea0c",
                "name": "Test3.0"
              },
              "networkId": {
                "type": "com.oracle.ovm.mgr.ws.model.Network",
                "value": "ac100000",
                "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/Network/ac100000",
                "name": "172.16.0.0"
              }
            }
          JSON
          response
        end
      end
    end
  end
end

