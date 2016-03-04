require 'fog/oracle/models/compute/base_object'

module Fog
  module Compute
    class Oracle
      class ServerPoolPolicy < BaseObject
        attribute :cpu_enable, :type => :boolean
        attribute :cpu_threshold, :type => :integer
        attribute :mode, :type => :string # PolicyMode
        attribute :period_minutes, :type => :integer
        has_many_identities :server_ids, :servers, :all_name => :servers
        has_many_identities :server_pool_network_policy_ids, :server_pool_network_policies, :all_name => :server_pool_network_policies
        has_one_identity :server_pool_id, :server_pools, :details_name => :server_pool
      end
    end
  end
end
