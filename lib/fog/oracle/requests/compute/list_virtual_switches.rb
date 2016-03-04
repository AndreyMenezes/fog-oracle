module Fog
  module Compute
    class Oracle
      class Real
        def list_virtual_switches()
          request(
            :expects  => [200],
            :method   => 'GET',
            :path     => 'VirtualSwitch',
          )
        end
      end

      class Mock
        include Fog::Oracle::JsonUtils

        def list_virtual_switches()
          response = Excon::Response.new
          response.status = 200
          response.body = json_decode <<-JSON
            [
              {
                "id": {
                  "type": "com.oracle.ovm.mgr.ws.model.VirtualSwitch",
                  "value": "0004fb0000300000260eb4696557f882",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/VirtualSwitch/0004fb0000300000260eb4696557f882",
                  "name": null
                },
                "name": "",
                "description": "Virtual Switch for Port",
                "locked": false,
                "readOnly": false,
                "generation": 0,
                "userData": [],
                "resourceGroupIds": [],
                "networkId": {
                  "type": "com.oracle.ovm.mgr.ws.model.Network",
                  "value": "ac100000",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/Network/ac100000",
                  "name": "172.16.0.0"
                },
                "ethernetPortId": {
                  "type": "com.oracle.ovm.mgr.ws.model.EthernetPort",
                  "value": "0004fb0000200000a0cc6d2cfde52f39",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/EthernetPort/0004fb0000200000a0cc6d2cfde52f39",
                  "name": "bond0 on oracle-vm-server"
                },
                "vlanInterfaceId": null
              }
            ]
          JSON
          response
        end
      end
    end
  end
end

