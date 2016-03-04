module Fog
  module Compute
    class Oracle
      class Real
        def get_network(id)
          request(
            :expects  => [200],
            :method   => 'GET',
            :path     => "Network/#{escape(id)}",
          )
        end
      end

      class Mock
        include Fog::Oracle::JsonUtils

        def get_network(id)
          response = Excon::Response.new
          response.status = 200
          response.body = json_decode <<-JSON
            {
              "id": {
                "type": "com.oracle.ovm.mgr.ws.model.Network",
                "value": "ac100000",
                "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/Network/ac100000",
                "name": "172.16.0.0"
              },
              "name": "172.16.0.0",
              "description": "",
              "locked": false,
              "readOnly": false,
              "generation": 12,
              "userData": [],
              "resourceGroupIds": [],
              "roles": [
                "MANAGEMENT",
                "CLUSTER_HEARTBEAT",
                "LIVE_MIGRATE",
                "VIRTUAL_MACHINE",
                "STORAGE"
              ],
              "virtualNicIds": [
                {
                  "type": "com.oracle.ovm.mgr.ws.model.VirtualNic",
                  "value": "0004fb0000070000f35dc14d694dadc9",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/VirtualNic/0004fb0000070000f35dc14d694dadc9",
                  "name": "00:21:f6:3a:60:bc"
                },
                {
                  "type": "com.oracle.ovm.mgr.ws.model.VirtualNic",
                  "value": "0004fb0000070000bcfbd74f6571fc9d",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/VirtualNic/0004fb0000070000bcfbd74f6571fc9d",
                  "name": "Template Vnic"
                },
                {
                  "type": "com.oracle.ovm.mgr.ws.model.VirtualNic",
                  "value": "0004fb0000070000aaf69e494353ebb9",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/VirtualNic/0004fb0000070000aaf69e494353ebb9",
                  "name": "00:21:f6:4b:c7:1d"
                },
                {
                  "type": "com.oracle.ovm.mgr.ws.model.VirtualNic",
                  "value": "0004fb0000070000d1272c5187d1bef0",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/VirtualNic/0004fb0000070000d1272c5187d1bef0",
                  "name": "00:21:f6:0f:d6:2c"
                },
                {
                  "type": "com.oracle.ovm.mgr.ws.model.VirtualNic",
                  "value": "0004fb0000070000db41c339b6242c51",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/VirtualNic/0004fb0000070000db41c339b6242c51",
                  "name": "00:21:f6:26:2d:d2"
                }
              ],
              "ethernetPortIds": [
                {
                  "type": "com.oracle.ovm.mgr.ws.model.EthernetPort",
                  "value": "0004fb0000200000a0cc6d2cfde52f39",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/EthernetPort/0004fb0000200000a0cc6d2cfde52f39",
                  "name": "bond0 on oracle-vm-server"
                }
              ],
              "vlanInterfaceIds": [],
              "serverLocal": false,
              "mtu": 0,
              "serverId": null
            }
          JSON
          response
        end
      end
    end
  end
end

