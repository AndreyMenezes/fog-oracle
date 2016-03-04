require 'fog/oracle/models/compute/base_object'

module Fog
  module Compute
    class Oracle
      class ServerPoolNetworkPolicy < BaseObject
        attribute :enable, :type => :boolean
        attribute :threshold, :type => :integer
        has_one_identity :network_id, :networks, :details_name => :network
        has_one_identity :server_pool_policy_id, :server_pool_policies, :details_name => :server_pool_policy
      end
    end
  end
end
