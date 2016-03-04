require 'fog/oracle/models/model'

module Fog
  module Compute
    class Oracle
      class BaseObject < Fog::Oracle::Model
        identity :id
        attribute :name, :type => :string
        attribute :description, :type => :string
        attribute :locked, :type => :boolean
        attribute :read_only, :type => :boolean
        attribute :generation, :type => :integer
        attribute :user_data
        has_many_identities :resource_group_ids, :resource_groups, :all_name => :resource_groups

        def key
          return id["value"]
        end

        def uri
          return id["uri"]
        end
      end
    end
  end
end
