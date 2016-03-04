require 'fog/oracle/models/model'

module Fog
  module Compute
    class Oracle
      class AccessHost < Fog::Oracle::Model
        attribute :hostname, :type => :string
        attribute :password, :type => :string
        attribute :port, :type => :integer
        attribute :username, :type => :string
      end
    end
  end
end
