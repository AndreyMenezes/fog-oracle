require 'fog/oracle/models/model'

module Fog
  module Compute
    class Oracle
      class MacManagementAttributes < Fog::Oracle::Model
        attribute :address_range_end, :type => :string
        attribute :address_range_start, :type => :string
        attribute :oui, :type => :string
      end
    end
  end
end
