require 'fog/oracle/models/model'

module Fog
  module Compute
    class Oracle
      class WsErrorDetails < Fog::Oracle::Model
        attribute :cause, :type => :string
        attribute :error_code, :type => :string
        attribute :message, :type => :string
        attribute :ws_error_code, :type => :string # WsErrorCode
      end
    end
  end
end
