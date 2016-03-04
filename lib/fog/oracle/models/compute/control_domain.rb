require 'fog/oracle/models/compute/base_object'

module Fog
  module Compute
    class Oracle
      class ControlDomain < BaseObject
        attribute :agent_version, :type => :string
        attribute :cpu_count, :type => :integer
        attribute :memory, :type => :integer
        attribute :os_kernel_release, :type => :string
        attribute :os_kernel_version, :type => :string
        attribute :os_major_version, :type => :string
        attribute :os_minor_version, :type => :string
        attribute :os_name, :type => :string
        attribute :os_type, :type => :string
        attribute :ovm_version, :type => :string
        attribute :rpm_version, :type => :string
        has_one_identity :server_id, :servers, :details_name => :server
      end
    end
  end
end
