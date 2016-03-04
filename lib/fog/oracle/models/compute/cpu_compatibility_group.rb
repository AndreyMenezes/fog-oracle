require 'fog/oracle/models/compute/base_object'

module Fog
  module Compute
    class Oracle
      class CpuCompatibilityGroup < BaseObject
        has_many_identities :server_ids, :servers, :all_name => :servers
      end
    end
  end
end
