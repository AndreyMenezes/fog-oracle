module Fog
  module Compute
    class Oracle
      class Real
        def list_cpu_compatibility_groups()
          request(
            :expects  => [200],
            :method   => 'GET',
            :path     => 'CpuCompatibilityGroup',
          )
        end
      end

      class Mock
        include Fog::Oracle::JsonUtils

        def list_cpu_compatibility_groups()
          response = Excon::Response.new
          response.status = 200
          response.body = json_decode <<-JSON
            [
              {
                "id": {
                  "type": "com.oracle.ovm.mgr.ws.model.CpuCompatibilityGroup",
                  "value": "Default_Intel_F6_M60",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/CpuCompatibilityGroup/Default_Intel_F6_M60",
                  "name": "Default_Intel_Family:6_Model:60"
                },
                "name": "Default_Intel_Family:6_Model:60",
                "description": "",
                "locked": false,
                "readOnly": false,
                "generation": 0,
                "userData": [],
                "resourceGroupIds": [],
                "serverIds": [
                  {
                    "type": "com.oracle.ovm.mgr.ws.model.Server",
                    "value": "03:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09",
                    "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/Server/03:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09",
                    "name": "oracle-vm-server"
                  }
                ]
              }
            ]
          JSON
          response
        end
      end
    end
  end
end

