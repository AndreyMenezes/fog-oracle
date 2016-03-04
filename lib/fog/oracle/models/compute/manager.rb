require 'fog/oracle/models/compute/base_object'

module Fog
  module Compute
    class Oracle
      class Manager < BaseObject
        attribute :manager_run_state, :type => :string # ManagerRunState
        attribute :manager_time, :type => :integer
        attribute :manager_uuid, :type => :string
        attribute :manager_version, :type => :string
      end
    end
  end
end
