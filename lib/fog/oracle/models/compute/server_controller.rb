require 'fog/oracle/models/compute/base_object'

module Fog
  module Compute
    class Oracle
      class ServerController < BaseObject
        attribute :ipaddress, :type => :string
        attribute :password, :type => :string
        attribute :server_controller_type, :type => :string # ServerControllerType
        attribute :username, :type => :string
        has_one_identity :server_id, :servers, :details_name => :server
      end
    end
  end
end
