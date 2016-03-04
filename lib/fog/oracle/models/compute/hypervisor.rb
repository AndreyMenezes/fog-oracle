require 'fog/oracle/models/model'

module Fog
  module Compute
    class Oracle
      class Hypervisor < Fog::Oracle::Model
        attribute :capabilities, :type => :array # of HypervisorCapability
        attribute :type, :type => :string # HypervisorType
        attribute :version, :type => :string
      end
    end
  end
end
