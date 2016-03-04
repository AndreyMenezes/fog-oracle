require 'fog/oracle/models/model'

module Fog
  module Compute
    class Oracle
      class KeyValuePair < Fog::Oracle::Model
        attribute :key, :type => :string
        attribute :value, :type => :string
      end
    end
  end
end
