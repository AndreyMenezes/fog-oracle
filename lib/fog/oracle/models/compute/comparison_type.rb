require 'fog/oracle/models/model'

module Fog
  module Compute
    class Oracle
      class ComparisonType < Fog::Oracle::Model
        attribute :equality_type, :type => :string # EqualityType
        attribute :query_value, :type => :string
      end
    end
  end
end
