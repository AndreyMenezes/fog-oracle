require 'fog/oracle/models/model'

module Fog
  module Compute
    class Oracle
      class StringList < Fog::Oracle::Model
        attribute :strings, :type => :array # of :string
      end
    end
  end
end
