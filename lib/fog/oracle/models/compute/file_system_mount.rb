require 'fog/oracle/models/compute/base_object'

module Fog
  module Compute
    class Oracle
      class FileSystemMount < BaseObject
        attribute :absolute_path, :type => :string
        attribute :options, :type => :string
        attribute :share_path, :type => :string
        has_one_identity :file_system_id, :file_systems, :details_name => :file_system
        has_one_identity :server_id, :servers, :details_name => :server
      end
    end
  end
end
