require 'fog/oracle/models/model'

module Fog
  module Compute
    class Oracle
      class Statistic < Fog::Oracle::Model
        attribute :associated_object_id
        attribute :component, :type => :string
        attribute :end_time, :type => :integer
        attribute :is_average, :type => :boolean
        attribute :is_valid, :type => :boolean
        attribute :start_time, :type => :integer
        attribute :type, :type => :string # StatisticType
        attribute :value, :type => :float
      end
    end
  end
end
