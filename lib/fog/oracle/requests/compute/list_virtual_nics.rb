module Fog
  module Compute
    class Oracle
      class Real
        def list_virtual_nics()
          request(
            :expects  => [200],
            :method   => 'GET',
            :path     => 'VirtualNic',
          )
        end
      end

      class Mock
        include Fog::Oracle::JsonUtils

        def list_virtual_nics()
          response = Excon::Response.new
          response.status = 200
          response.body = json_decode <<-JSON
            [
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
              },
              {
                "id": {
                  "type": "com.oracle.ovm.mgr.ws.model.VirtualNic",
                  "value": "0004fb0000070000bcfbd74f6571fc9d",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/VirtualNic/0004fb0000070000bcfbd74f6571fc9d",
                  "name": "Template Vnic"
                },
                "name": "Template Vnic",
                "description": "A dummy vnic used only for templates",
                "locked": false,
                "readOnly": false,
                "generation": 2,
                "userData": [],
                "resourceGroupIds": [],
                "macAddress": null,
                "ipAddresses": [],
                "interfaceName": "",
                "vmId": {
                  "type": "com.oracle.ovm.mgr.ws.model.Vm",
                  "value": "0004fb0000060000bc56cffe6e9aba7a",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/Vm/0004fb0000060000bc56cffe6e9aba7a",
                  "name": "centos-7-template.0"
                },
                "networkId": {
                  "type": "com.oracle.ovm.mgr.ws.model.Network",
                  "value": "ac100000",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/Network/ac100000",
                  "name": "172.16.0.0"
                }
              },
              {
                "id": {
                  "type": "com.oracle.ovm.mgr.ws.model.VirtualNic",
                  "value": "0004fb0000070000aaf69e494353ebb9",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/VirtualNic/0004fb0000070000aaf69e494353ebb9",
                  "name": "00:21:f6:4b:c7:1d"
                },
                "name": "00:21:f6:4b:c7:1d",
                "description": "",
                "locked": false,
                "readOnly": false,
                "generation": 1,
                "userData": [],
                "resourceGroupIds": [],
                "macAddress": "00:21:f6:4b:c7:1d",
                "ipAddresses": [],
                "interfaceName": "",
                "vmId": {
                  "type": "com.oracle.ovm.mgr.ws.model.Vm",
                  "value": "0004fb0000060000fae47dddca76434d",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/Vm/0004fb0000060000fae47dddca76434d",
                  "name": "test2.0"
                },
                "networkId": {
                  "type": "com.oracle.ovm.mgr.ws.model.Network",
                  "value": "ac100000",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/Network/ac100000",
                  "name": "172.16.0.0"
                }
              },
              {
                "id": {
                  "type": "com.oracle.ovm.mgr.ws.model.VirtualNic",
                  "value": "0004fb0000070000db41c339b6242c51",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/VirtualNic/0004fb0000070000db41c339b6242c51",
                  "name": "00:21:f6:26:2d:d2"
                },
                "name": "00:21:f6:26:2d:d2",
                "description": "",
                "locked": false,
                "readOnly": false,
                "generation": 1,
                "userData": [],
                "resourceGroupIds": [],
                "macAddress": "00:21:f6:26:2d:d2",
                "ipAddresses": [],
                "interfaceName": "",
                "vmId": {
                  "type": "com.oracle.ovm.mgr.ws.model.Vm",
                  "value": "0004fb0000060000048aa9b21a891dc1",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/Vm/0004fb0000060000048aa9b21a891dc1",
                  "name": "Test4.0"
                },
                "networkId": {
                  "type": "com.oracle.ovm.mgr.ws.model.Network",
                  "value": "ac100000",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/Network/ac100000",
                  "name": "172.16.0.0"
                }
              },
              {
                "id": {
                  "type": "com.oracle.ovm.mgr.ws.model.VirtualNic",
                  "value": "0004fb0000070000f35dc14d694dadc9",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/VirtualNic/0004fb0000070000f35dc14d694dadc9",
                  "name": "00:21:f6:3a:60:bc"
                },
                "name": "00:21:f6:3a:60:bc",
                "description": "",
                "locked": false,
                "readOnly": false,
                "generation": 3,
                "userData": [],
                "resourceGroupIds": [],
                "macAddress": "00:21:f6:3a:60:bc",
                "ipAddresses": [],
                "interfaceName": "",
                "vmId": {
                  "type": "com.oracle.ovm.mgr.ws.model.Vm",
                  "value": "0004fb00000600002d441b5e6431b729",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/Vm/0004fb00000600002d441b5e6431b729",
                  "name": "test"
                },
                "networkId": {
                  "type": "com.oracle.ovm.mgr.ws.model.Network",
                  "value": "ac100000",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/Network/ac100000",
                  "name": "172.16.0.0"
                }
              }
            ]
          JSON
          response
        end
      end
    end
  end
end

