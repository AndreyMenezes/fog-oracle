module Fog
  module Compute
    class Oracle
      class Real
        def get_ethernet_port(id)
          request(
            :expects  => [200],
            :method   => 'GET',
            :path     => "EthernetPort/#{escape(id)}",
          )
        end
      end

      class Mock
        include Fog::Oracle::JsonUtils

        def get_ethernet_port(id)
          response = Excon::Response.new
          response.status = 200
          response.body = json_decode <<-JSON
            {
              "id": {
                "type": "com.oracle.ovm.mgr.ws.model.EthernetPort",
                "value": "0004fb0000200000bd65b4a15a3af1c8",
                "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/EthernetPort/0004fb0000200000bd65b4a15a3af1c8",
                "name": "eth0 on oracle-vm-server"
              },
              "name": "eth0 on oracle-vm-server",
              "description": "",
              "locked": false,
              "readOnly": false,
              "generation": 0,
              "userData": [],
              "resourceGroupIds": [],
              "bondMode": null,
              "interfaceName": "eth0",
              "macAddress": "fc:aa:14:e3:f5:de",
              "mtu": 1500,
              "networkId": null,
              "physicalPortIds": null,
              "bondPortId": {
                "type": "com.oracle.ovm.mgr.ws.model.EthernetPort",
                "value": "0004fb0000200000a0cc6d2cfde52f39",
                "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/EthernetPort/0004fb0000200000a0cc6d2cfde52f39",
                "name": "bond0 on oracle-vm-server"
              },
              "portType": "PHYSICAL",
              "serverId": {
                "type": "com.oracle.ovm.mgr.ws.model.Server",
                "value": "03:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09",
                "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/Server/03:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09",
                "name": "oracle-vm-server"
              },
              "vlanInterfaceIds": [],
              "portState": "PORT_UP",
              "virtualSwitchId": null,
              "ipaddresses": null
            }
          JSON
          response
        end
      end
    end
  end
end

