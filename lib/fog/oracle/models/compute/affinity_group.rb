require 'fog/oracle/models/compute/base_object'

module Fog
  module Compute
    class Oracle
      class AffinityGroup < BaseObject
        attribute :server_affinity_type, :type => :string # AffinityType
        attribute :vm_affinity_type, :type => :string # AffinityType
        has_many_identities :server_ids, :servers, :all_name => :servers
        has_many_identities :vm_ids, :vms, :all_name => :vms
        has_one_identity :server_pool_id, :server_pools, :details_name => :server_pool
      end
    end
  end
end
