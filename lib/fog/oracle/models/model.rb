require 'fog/core/model'
require 'fog/oracle/models/associations'

module Fog
  module Oracle
    class Model < Fog::Model
      attr_accessor :response

      def self.has_one(name, collection_name, options = {})
        Fog::Associations::OracleOneModel.new(self, name, collection_name, options)
      end

      def self.has_many(name, collection_name, options = {})
        Fog::Associations::OracleManyModels.new(self, name, collection_name, options)
      end

      def self.has_one_identity(name, collection_name, options = {})
        Fog::Associations::OracleOneIdentity.new(self, name, collection_name, options)
      end

      def self.has_many_identities(name, collection_name, options = {})
        Fog::Associations::OracleManyIdentities.new(self, name, collection_name, options)
      end
    end
  end
end
