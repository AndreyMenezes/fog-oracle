require 'fog/oracle/models/model'

module Fog
  module Compute
    class Oracle
      class IPAddress < Fog::Oracle::Model
        attribute :address, :type => :string
        attribute :config_type, :type => :string # IPAddressConfigType
        attribute :netmask, :type => :string
        attribute :type, :type => :string # IPAddressType
      end
    end
  end
end
