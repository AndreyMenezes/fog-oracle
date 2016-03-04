require 'fog/oracle/models/model'

module Fog
  module Compute
    class Oracle
      class RepositoryImport < Fog::Oracle::Model
        attribute :proxy, :type => :string
        attribute :urls, :type => :array # of :string
      end
    end
  end
end
