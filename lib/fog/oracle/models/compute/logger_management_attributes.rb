require 'fog/oracle/models/model'

module Fog
  module Compute
    class Oracle
      class LoggerManagementAttributes < Fog::Oracle::Model
        attribute :configured_level, :type => :string # LogLevel
        attribute :effective_level, :type => :string # LogLevel
        attribute :inherited_from, :type => :string
        attribute :name, :type => :string
      end
    end
  end
end
