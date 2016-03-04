require 'fog/oracle/models/compute/base_object'

module Fog
  module Compute
    class Oracle
      class ServerUpdateConfiguration < BaseObject
        attribute :global_configuration, :type => :boolean
        attribute :repository_type, :type => :string # ServerUpdateRepositoryType
        has_many_identities :server_update_repository_configuration_ids, :server_update_repository_configurations, :all_name => :server_update_repository_configurations
        has_one_identity :server_pool_id, :server_pools, :details_name => :server_pool
      end
    end
  end
end
