module Fog
  module Compute
    class Oracle
      class Real
        def get_control_domain(id)
          request(
            :expects  => [200],
            :method   => 'GET',
            :path     => "ControlDomain/#{escape(id)}",
          )
        end
      end

      class Mock
        include Fog::Oracle::JsonUtils

        def get_control_domain(id)
          response = Excon::Response.new
          response.status = 200
          response.body = json_decode <<-JSON
            {
              "id": {
                "type": "com.oracle.ovm.mgr.ws.model.ControlDomain",
                "value": "0004fb0000210000e7c92f6882593287",
                "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/ControlDomain/0004fb0000210000e7c92f6882593287",
                "name": "Control Domain"
              },
              "name": "Control Domain",
              "description": "",
              "locked": false,
              "readOnly": false,
              "generation": 1,
              "userData": [],
              "resourceGroupIds": [],
              "osType": "Linux",
              "osName": "Oracle VM server",
              "osMajorVersion": "3",
              "osMinorVersion": "3",
              "osKernelRelease": "3.8.13-68.3.3.el6uek.x86_64",
              "osKernelVersion": "#2 SMP Tue Jun 23 23:43:15 PDT 2015",
              "rpmVersion": "3.3.3-1.1.el6",
              "ovmVersion": "3.3.3-1085",
              "agentVersion": "3.3.3-1.1.el6",
              "memory": 1102,
              "cpuCount": 8,
              "serverId": {
                "type": "com.oracle.ovm.mgr.ws.model.Server",
                "value": "03:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09",
                "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/Server/03:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09",
                "name": "oracle-vm-server"
              }
            }
          JSON
          response
        end
      end
    end
  end
end

