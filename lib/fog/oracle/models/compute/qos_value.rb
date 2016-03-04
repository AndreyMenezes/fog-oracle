require 'fog/oracle/models/model'

module Fog
  module Compute
    class Oracle
      class QosValue < Fog::Oracle::Model
        attribute :description, :type => :string
        attribute :priority, :type => :integer
        attribute :value, :type => :string
      end
    end
  end
end
