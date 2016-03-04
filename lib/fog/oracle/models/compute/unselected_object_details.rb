require 'fog/oracle/models/model'

module Fog
  module Compute
    class Oracle
      class UnselectedObjectDetails < Fog::Oracle::Model
        attribute :reasons, :type => :array # of :string
        attribute :unselected_object_id
      end
    end
  end
end
