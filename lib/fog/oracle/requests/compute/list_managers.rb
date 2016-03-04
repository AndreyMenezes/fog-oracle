module Fog
  module Compute
    class Oracle
      class Real
        def list_managers()
          request(
            :expects  => [200],
            :method   => 'GET',
            :path     => 'Manager',
          )
        end
      end

      class Mock
        include Fog::Oracle::JsonUtils

        def list_managers()
          response = Excon::Response.new
          response.status = 200
          response.body = json_decode <<-JSON
            [
              {
                "id": {
                  "type": "com.oracle.ovm.mgr.ws.model.Manager",
                  "value": "0004fb000001000078b1f88e034c8105",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/Manager/0004fb000001000078b1f88e034c8105",
                  "name": "OVM Manager"
                },
                "name": "OVM Manager",
                "description": "",
                "locked": false,
                "readOnly": false,
                "generation": 0,
                "userData": [],
                "resourceGroupIds": [],
                "managerUuid": "0004fb000001000078b1f88e034c8105",
                "managerVersion": "3.3.3.1085",
                "managerRunState": "RUNNING",
                "managerTime": 1448909453163
              }
            ]
          JSON
          response
        end
      end
    end
  end
end

