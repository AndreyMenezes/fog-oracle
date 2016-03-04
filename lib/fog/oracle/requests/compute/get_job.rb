module Fog
  module Compute
    class Oracle
      class Real
        def get_job(id)
          request(
            :expects  => [200],
            :method   => 'GET',
            :path     => "Job/#{escape(id)}",
          )
        end
      end

      class Mock
        include Fog::Oracle::JsonUtils

        def get_job(id)
          response = Excon::Response.new
          response.status = 200
          response.body = json_decode <<-JSON
            {
              "id": {
                "type": "com.oracle.ovm.mgr.ws.model.Job",
                "value": "1448899976258",
                "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/Job/1448899976258",
                "name": "StatsIntervalAdjusterTaskDbImpl_1448899976257"
              },
              "name": "StatsIntervalAdjusterTaskDbImpl_1448899976257",
              "description": "Set statistic manager interval to 20 seconds",
              "locked": false,
              "readOnly": false,
              "generation": 0,
              "userData": null,
              "resourceGroupIds": null,
              "resultId": null,
              "jobRunState": "SUCCESS",
              "jobSummaryState": "SUCCESS",
              "done": true,
              "summaryDone": true,
              "jobGroup": false,
              "error": {
                "message": null,
                "type": null
              },
              "progressMessage": null,
              "latestSummaryProgressMessage": null,
              "extraInfo": null,
              "parentJobId": null,
              "childJobIds": [],
              "user": "@OvmAdmin",
              "abortedByUser": null,
              "startTime": 1448899976345,
              "endTime": 1448899976365
            }
          JSON
          response
        end
      end
    end
  end
end

