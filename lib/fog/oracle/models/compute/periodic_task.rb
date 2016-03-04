require 'fog/oracle/models/compute/base_object'

module Fog
  module Compute
    class Oracle
      class PeriodicTask < BaseObject
        attribute :enabled, :type => :boolean
        attribute :interval, :type => :integer
      end
    end
  end
end
