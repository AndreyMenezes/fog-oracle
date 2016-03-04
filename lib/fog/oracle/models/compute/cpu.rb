require 'fog/oracle/models/compute/base_object'

module Fog
  module Compute
    class Oracle
      class Cpu < BaseObject
        attribute :cpu_family, :type => :integer
        attribute :cpu_model, :type => :integer
        attribute :cpu_number, :type => :integer
        attribute :flags, :type => :string
        attribute :level_two_cache_size, :type => :integer
        attribute :model_name, :type => :string
        attribute :vendor_id, :type => :string
        attribute :virtual_cpu_number, :type => :integer
        has_one_identity :server_id, :servers, :details_name => :server
      end
    end
  end
end
