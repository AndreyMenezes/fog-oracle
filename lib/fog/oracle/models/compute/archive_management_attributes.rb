require 'fog/oracle/models/model'

module Fog
  module Compute
    class Oracle
      class ArchiveManagementAttributes < Fog::Oracle::Model
        attribute :archive_events_max_age, :type => :integer
        attribute :archive_jobs_max_age, :type => :integer
        attribute :constructing_jobs_max_age, :type => :integer
        attribute :interval, :type => :integer
        attribute :live_events_max_age, :type => :integer
        attribute :live_jobs_max_age, :type => :integer
      end
    end
  end
end
