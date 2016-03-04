require 'fog/oracle/models/model'

module Fog
  module Compute
    class Oracle
      class EventQuery < Fog::Oracle::Model
        attribute :acknowledged, :type => :boolean
        attribute :associated_object_ids, :type => :array
        attribute :ids, :type => :array # of :integer
        attribute :max_results, :type => :integer
        attribute :order_by_map # hash EventField => OrderType
        attribute :types, :type => :array # of :string
        attribute :user_ackable, :type => :boolean
        has_many :create_time_arguments, :comparison_types
        has_many :id_arguments, :comparison_types
        has_many :modify_time_arguments, :comparison_types
        has_many :severity_arguments, :comparison_types
        has_many :type_arguments, :comparison_types
      end
    end
  end
end
