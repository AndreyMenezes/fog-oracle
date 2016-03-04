require 'fog/oracle/models/model'

module Fog
  module Compute
    class Oracle
      class BusinessSelection < Fog::Oracle::Model
        attribute :global_unselected_reasons, :type => :array # of :string
        attribute :selected_object_ids, :type => :array
        has_many :unselected_object_details, :unselected_object_detailses
      end
    end
  end
end
