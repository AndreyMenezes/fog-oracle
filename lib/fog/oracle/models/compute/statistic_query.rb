require 'fog/oracle/models/model'

module Fog
  module Compute
    class Oracle
      class StatisticQuery < Fog::Oracle::Model
        attribute :associated_object_ids, :type => :array
        attribute :associated_object_types, :type => :array # of :string
        attribute :component_names, :type => :array # of :string
        attribute :max_results, :type => :integer
        attribute :order_by_map # hash StatisticField => OrderType
        attribute :types, :type => :array # of Statistic.StatisticType
        has_many :time_arguments, :comparison_types
        has_many :value_arguments, :comparison_types
      end
    end
  end
end
