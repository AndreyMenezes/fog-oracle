require 'fog/oracle/models/model'

module Fog
  module Compute
    class Oracle
      class LoginCertificate < Fog::Oracle::Model
        attribute :certificate, :type => :string
        attribute :fingerprint, :type => :string
        attribute :private_key, :type => :string
      end
    end
  end
end
