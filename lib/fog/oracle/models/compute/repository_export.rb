require 'fog/oracle/models/compute/base_object'

module Fog
  module Compute
    class Oracle
      class RepositoryExport < BaseObject
        attribute :client_hostname, :type => :string
        attribute :export_fs_type, :type => :string # RepositoryExportFsType
        attribute :options, :type => :string
        attribute :repository_path, :type => :string
        has_one_identity :repository_id, :repositories, :details_name => :repository
        has_one_identity :server_id, :servers, :details_name => :server
      end
    end
  end
end
