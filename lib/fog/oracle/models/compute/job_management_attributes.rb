require 'fog/oracle/models/model'

module Fog
  module Compute
    class Oracle
      class JobManagementAttributes < Fog::Oracle::Model
        attribute :job_lock_timeout_secs, :type => :integer
        attribute :save_transcript_on_success, :type => :boolean
      end
    end
  end
end
