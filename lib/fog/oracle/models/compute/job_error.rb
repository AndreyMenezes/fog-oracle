require 'fog/oracle/models/model'

module Fog
  module Compute
    class Oracle
      class JobError < Fog::Oracle::Model
        attribute :message, :type => :string
        attribute :type, :type => :string # JobErrorType
      end
    end
  end
end
