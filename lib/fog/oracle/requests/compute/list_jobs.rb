module Fog
  module Compute
    class Oracle
      class Real
        def list_jobs()
          request(
            :expects  => [200],
            :method   => 'GET',
            :path     => 'Job',
          )
        end
      end

      class Mock
        include Fog::Oracle::JsonUtils

        def list_jobs()
          response = Excon::Response.new
          response.status = 200
          response.body = json_decode <<-JSON
            [
              {
                "id": {
                  "type": "com.oracle.ovm.mgr.ws.model.Job",
                  "value": "1448907178095",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/Job/1448907178095",
                  "name": "StatsIntervalAdjusterTaskDbImpl_1448907178094"
                },
                "name": "StatsIntervalAdjusterTaskDbImpl_1448907178094",
                "description": "Set statistic manager interval to 20 seconds",
                "locked": false,
                "readOnly": false,
                "generation": 11,
                "userData": [],
                "resourceGroupIds": [],
                "resultId": null,
                "jobRunState": "SUCCESS",
                "jobSummaryState": "SUCCESS",
                "done": true,
                "summaryDone": true,
                "jobGroup": false,
                "error": null,
                "progressMessage": null,
                "latestSummaryProgressMessage": "",
                "extraInfo": null,
                "parentJobId": null,
                "childJobIds": [],
                "user": "@OvmAdmin",
                "abortedByUser": null,
                "startTime": 1448907178170,
                "endTime": 1448907178191
              }
            ]
          JSON
          response
        end
      end
    end
  end
end

