require 'fog/oracle/models/compute/base_object'

module Fog
  module Compute
    class Oracle
      class ServerUpdateRepositoryConfiguration < BaseObject
        attribute :enabled, :type => :boolean
        attribute :package_signature_key, :type => :string
        attribute :package_signature_type, :type => :string # PackageSignatureType
        attribute :repository_name, :type => :string
        attribute :url, :type => :string
        has_one_identity :server_update_configuration_id, :server_update_configurations, :details_name => :server_update_configuration
      end
    end
  end
end
