require 'fog/oracle/models/model'

module Fog
  module Compute
    class Oracle
      class StorageAbilityRecord < Fog::Oracle::Model
        attribute :ability, :type => :string # StorageAbility
        attribute :value, :type => :string # StorageAbilityValue
      end
    end
  end
end
