require 'fog/oracle/models/model'

module Fog
  module Compute
    class Oracle
      class SessionProperties < Fog::Oracle::Model
        attribute :locale, :type => :string
      end
    end
  end
end
