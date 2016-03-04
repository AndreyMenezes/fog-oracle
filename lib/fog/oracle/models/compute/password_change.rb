require 'fog/oracle/models/model'

module Fog
  module Compute
    class Oracle
      class PasswordChange < Fog::Oracle::Model
        attribute :current_password, :type => :string
        attribute :new_password, :type => :string
        attribute :username, :type => :string
      end
    end
  end
end
