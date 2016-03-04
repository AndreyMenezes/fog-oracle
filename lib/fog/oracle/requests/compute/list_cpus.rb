module Fog
  module Compute
    class Oracle
      class Real
        def list_cpus()
          request(
            :expects  => [200],
            :method   => 'GET',
            :path     => 'Cpu',
          )
        end
      end

      class Mock
        include Fog::Oracle::JsonUtils

        def list_cpus()
          response = Excon::Response.new
          response.status = 200
          response.body = json_decode <<-JSON
            [
              {
                "id": {
                  "type": "com.oracle.ovm.mgr.ws.model.Cpu",
                  "value": "Processor (8) in 03:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/Cpu/Processor%20(8)%20in%2003:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09",
                  "name": null
                },
                "name": "",
                "description": "",
                "locked": false,
                "readOnly": false,
                "generation": 0,
                "userData": [],
                "resourceGroupIds": [],
                "cpuNumber": 8,
                "levelTwoCacheSize": 8192,
                "flags": "fpu de tsc msr pae mce cx8 apic sep mca cmov pat clflush acpi mmx fxsr sse sse2 ss ht syscall nx lm constant_tsc rep_good nopl nonstop_tsc eagerfpu pni pclmulqdq monitor est ssse3 fma cx16 sse4_1 sse4_2 movbe popcnt tsc_deadline_timer aes xsave avx f16c rdrand hypervisor lahf_lm abm ida arat xsaveopt pln pts dtherm fsgsbase bmi1 hle avx2 bmi2 erms rtm",
                "modelName": "Intel(R) Core(TM) i7-4790 CPU @ 3.60GHz",
                "virtualCpuNumber": -1,
                "vendorId": "GenuineIntel",
                "cpuFamily": 6,
                "cpuModel": 60,
                "serverId": {
                  "type": "com.oracle.ovm.mgr.ws.model.Server",
                  "value": "03:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/Server/03:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09",
                  "name": "oracle-vm-server"
                }
              },
              {
                "id": {
                  "type": "com.oracle.ovm.mgr.ws.model.Cpu",
                  "value": "Processor (7) in 03:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/Cpu/Processor%20(7)%20in%2003:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09",
                  "name": null
                },
                "name": "",
                "description": "",
                "locked": false,
                "readOnly": false,
                "generation": 0,
                "userData": [],
                "resourceGroupIds": [],
                "cpuNumber": 7,
                "levelTwoCacheSize": 8192,
                "flags": "fpu de tsc msr pae mce cx8 apic sep mca cmov pat clflush acpi mmx fxsr sse sse2 ss ht syscall nx lm constant_tsc rep_good nopl nonstop_tsc eagerfpu pni pclmulqdq monitor est ssse3 fma cx16 sse4_1 sse4_2 movbe popcnt tsc_deadline_timer aes xsave avx f16c rdrand hypervisor lahf_lm abm ida arat xsaveopt pln pts dtherm fsgsbase bmi1 hle avx2 bmi2 erms rtm",
                "modelName": "Intel(R) Core(TM) i7-4790 CPU @ 3.60GHz",
                "virtualCpuNumber": -1,
                "vendorId": "GenuineIntel",
                "cpuFamily": 6,
                "cpuModel": 60,
                "serverId": {
                  "type": "com.oracle.ovm.mgr.ws.model.Server",
                  "value": "03:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/Server/03:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09",
                  "name": "oracle-vm-server"
                }
              },
              {
                "id": {
                  "type": "com.oracle.ovm.mgr.ws.model.Cpu",
                  "value": "Processor (6) in 03:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/Cpu/Processor%20(6)%20in%2003:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09",
                  "name": null
                },
                "name": "",
                "description": "",
                "locked": false,
                "readOnly": false,
                "generation": 0,
                "userData": [],
                "resourceGroupIds": [],
                "cpuNumber": 6,
                "levelTwoCacheSize": 8192,
                "flags": "fpu de tsc msr pae mce cx8 apic sep mca cmov pat clflush acpi mmx fxsr sse sse2 ss ht syscall nx lm constant_tsc rep_good nopl nonstop_tsc eagerfpu pni pclmulqdq monitor est ssse3 fma cx16 sse4_1 sse4_2 movbe popcnt tsc_deadline_timer aes xsave avx f16c rdrand hypervisor lahf_lm abm ida arat xsaveopt pln pts dtherm fsgsbase bmi1 hle avx2 bmi2 erms rtm",
                "modelName": "Intel(R) Core(TM) i7-4790 CPU @ 3.60GHz",
                "virtualCpuNumber": -1,
                "vendorId": "GenuineIntel",
                "cpuFamily": 6,
                "cpuModel": 60,
                "serverId": {
                  "type": "com.oracle.ovm.mgr.ws.model.Server",
                  "value": "03:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/Server/03:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09",
                  "name": "oracle-vm-server"
                }
              },
              {
                "id": {
                  "type": "com.oracle.ovm.mgr.ws.model.Cpu",
                  "value": "Processor (5) in 03:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/Cpu/Processor%20(5)%20in%2003:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09",
                  "name": null
                },
                "name": "",
                "description": "",
                "locked": false,
                "readOnly": false,
                "generation": 0,
                "userData": [],
                "resourceGroupIds": [],
                "cpuNumber": 5,
                "levelTwoCacheSize": 8192,
                "flags": "fpu de tsc msr pae mce cx8 apic sep mca cmov pat clflush acpi mmx fxsr sse sse2 ss ht syscall nx lm constant_tsc rep_good nopl nonstop_tsc eagerfpu pni pclmulqdq monitor est ssse3 fma cx16 sse4_1 sse4_2 movbe popcnt tsc_deadline_timer aes xsave avx f16c rdrand hypervisor lahf_lm abm ida arat xsaveopt pln pts dtherm fsgsbase bmi1 hle avx2 bmi2 erms rtm",
                "modelName": "Intel(R) Core(TM) i7-4790 CPU @ 3.60GHz",
                "virtualCpuNumber": -1,
                "vendorId": "GenuineIntel",
                "cpuFamily": 6,
                "cpuModel": 60,
                "serverId": {
                  "type": "com.oracle.ovm.mgr.ws.model.Server",
                  "value": "03:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/Server/03:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09",
                  "name": "oracle-vm-server"
                }
              },
              {
                "id": {
                  "type": "com.oracle.ovm.mgr.ws.model.Cpu",
                  "value": "Processor (4) in 03:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/Cpu/Processor%20(4)%20in%2003:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09",
                  "name": null
                },
                "name": "",
                "description": "",
                "locked": false,
                "readOnly": false,
                "generation": 0,
                "userData": [],
                "resourceGroupIds": [],
                "cpuNumber": 4,
                "levelTwoCacheSize": 8192,
                "flags": "fpu de tsc msr pae mce cx8 apic sep mca cmov pat clflush acpi mmx fxsr sse sse2 ss ht syscall nx lm constant_tsc rep_good nopl nonstop_tsc eagerfpu pni pclmulqdq monitor est ssse3 fma cx16 sse4_1 sse4_2 movbe popcnt tsc_deadline_timer aes xsave avx f16c rdrand hypervisor lahf_lm abm ida arat xsaveopt pln pts dtherm fsgsbase bmi1 hle avx2 bmi2 erms rtm",
                "modelName": "Intel(R) Core(TM) i7-4790 CPU @ 3.60GHz",
                "virtualCpuNumber": -1,
                "vendorId": "GenuineIntel",
                "cpuFamily": 6,
                "cpuModel": 60,
                "serverId": {
                  "type": "com.oracle.ovm.mgr.ws.model.Server",
                  "value": "03:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/Server/03:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09",
                  "name": "oracle-vm-server"
                }
              },
              {
                "id": {
                  "type": "com.oracle.ovm.mgr.ws.model.Cpu",
                  "value": "Processor (3) in 03:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/Cpu/Processor%20(3)%20in%2003:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09",
                  "name": null
                },
                "name": "",
                "description": "",
                "locked": false,
                "readOnly": false,
                "generation": 0,
                "userData": [],
                "resourceGroupIds": [],
                "cpuNumber": 3,
                "levelTwoCacheSize": 8192,
                "flags": "fpu de tsc msr pae mce cx8 apic sep mca cmov pat clflush acpi mmx fxsr sse sse2 ss ht syscall nx lm constant_tsc rep_good nopl nonstop_tsc eagerfpu pni pclmulqdq monitor est ssse3 fma cx16 sse4_1 sse4_2 movbe popcnt tsc_deadline_timer aes xsave avx f16c rdrand hypervisor lahf_lm abm ida arat xsaveopt pln pts dtherm fsgsbase bmi1 hle avx2 bmi2 erms rtm",
                "modelName": "Intel(R) Core(TM) i7-4790 CPU @ 3.60GHz",
                "virtualCpuNumber": -1,
                "vendorId": "GenuineIntel",
                "cpuFamily": 6,
                "cpuModel": 60,
                "serverId": {
                  "type": "com.oracle.ovm.mgr.ws.model.Server",
                  "value": "03:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/Server/03:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09",
                  "name": "oracle-vm-server"
                }
              },
              {
                "id": {
                  "type": "com.oracle.ovm.mgr.ws.model.Cpu",
                  "value": "Processor (2) in 03:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/Cpu/Processor%20(2)%20in%2003:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09",
                  "name": null
                },
                "name": "",
                "description": "",
                "locked": false,
                "readOnly": false,
                "generation": 0,
                "userData": [],
                "resourceGroupIds": [],
                "cpuNumber": 2,
                "levelTwoCacheSize": 8192,
                "flags": "fpu de tsc msr pae mce cx8 apic sep mca cmov pat clflush acpi mmx fxsr sse sse2 ss ht syscall nx lm constant_tsc rep_good nopl nonstop_tsc eagerfpu pni pclmulqdq monitor est ssse3 fma cx16 sse4_1 sse4_2 movbe popcnt tsc_deadline_timer aes xsave avx f16c rdrand hypervisor lahf_lm abm ida arat xsaveopt pln pts dtherm fsgsbase bmi1 hle avx2 bmi2 erms rtm",
                "modelName": "Intel(R) Core(TM) i7-4790 CPU @ 3.60GHz",
                "virtualCpuNumber": -1,
                "vendorId": "GenuineIntel",
                "cpuFamily": 6,
                "cpuModel": 60,
                "serverId": {
                  "type": "com.oracle.ovm.mgr.ws.model.Server",
                  "value": "03:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/Server/03:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09",
                  "name": "oracle-vm-server"
                }
              },
              {
                "id": {
                  "type": "com.oracle.ovm.mgr.ws.model.Cpu",
                  "value": "Processor (1) in 03:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/Cpu/Processor%20(1)%20in%2003:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09",
                  "name": null
                },
                "name": "",
                "description": "",
                "locked": false,
                "readOnly": false,
                "generation": 0,
                "userData": [],
                "resourceGroupIds": [],
                "cpuNumber": 1,
                "levelTwoCacheSize": 8192,
                "flags": "fpu de tsc msr pae mce cx8 apic sep mca cmov pat clflush acpi mmx fxsr sse sse2 ss ht syscall nx lm constant_tsc rep_good nopl nonstop_tsc eagerfpu pni pclmulqdq monitor est ssse3 fma cx16 sse4_1 sse4_2 movbe popcnt tsc_deadline_timer aes xsave avx f16c rdrand hypervisor lahf_lm abm ida arat xsaveopt pln pts dtherm fsgsbase bmi1 hle avx2 bmi2 erms rtm",
                "modelName": "Intel(R) Core(TM) i7-4790 CPU @ 3.60GHz",
                "virtualCpuNumber": -1,
                "vendorId": "GenuineIntel",
                "cpuFamily": 6,
                "cpuModel": 60,
                "serverId": {
                  "type": "com.oracle.ovm.mgr.ws.model.Server",
                  "value": "03:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09",
                  "uri": "https://172.16.95.57:7002/ovm/core/wsapi/rest/Server/03:aa:02:fc:04:14:05:e3:f5:06:de:07:00:08:00:09",
                  "name": "oracle-vm-server"
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

