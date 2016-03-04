require 'fog/oracle/models/model'

module Fog
  module Compute
    class Oracle
      class BackupManagementAttributes < Fog::Oracle::Model
        attribute :backup_base_directory, :type => :string
        attribute :backup_command, :type => :string
        attribute :backup_running, :type => :boolean
        attribute :backup_supported, :type => :boolean
      end
    end
  end
end
