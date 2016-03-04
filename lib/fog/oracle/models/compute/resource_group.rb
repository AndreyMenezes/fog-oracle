require 'fog/oracle/models/compute/base_object'

module Fog
  module Compute
    class Oracle
      class ResourceGroup < BaseObject
        attribute :resource_ids, :type => :array
        attribute :type, :type => :string # ResourceGroupType
      end
    end
  end
end
