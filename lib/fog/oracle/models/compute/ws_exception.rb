require 'fog/oracle/models/model'

module Fog
  module Compute
    class Oracle
      class WsException < Fog::Oracle::Model
        has_one :error_details, :ws_error_detailses
      end
    end
  end
end
