require 'fog/oracle/models/compute/base_object'

module Fog
  module Compute
    class Oracle
      class Event < BaseObject
        attribute :acknowledgeable, :type => :boolean
        attribute :acknowledged, :type => :boolean
        attribute :associated_object_id
        attribute :create_time, :type => :integer
        attribute :event_severity, :type => :string # EventSeverity
        attribute :event_type, :type => :string
        attribute :modify_time, :type => :integer
        attribute :summary, :type => :string
      end
    end
  end
end
