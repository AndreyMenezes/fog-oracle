require 'fog/oracle/models/model'

module Fog
  module Compute
    class Oracle
      class ServerEventAttributes < Fog::Oracle::Model
        attribute :max_notification_rate, :type => :integer
      end
    end
  end
end
