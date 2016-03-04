require 'fog/oracle/models/model'

module Fog
  module Compute
    class Oracle
      class StatisticsManagementAttributes < Fog::Oracle::Model
        attribute :enabled, :type => :boolean
        attribute :hold_time, :type => :integer
        attribute :max_queue_size, :type => :integer
        attribute :per_hour_threshold, :type => :integer
        attribute :sampling_interval, :type => :integer
      end
    end
  end
end
