require 'fog/oracle/models/compute/base_object'

module Fog
  module Compute
    class Oracle
      class Job < BaseObject
        attribute :aborted_by_user, :type => :string
        attribute :done, :type => :boolean
        attribute :end_time, :type => :integer
        attribute :extra_info, :type => :string
        attribute :job_group, :type => :boolean
        attribute :job_run_state, :type => :string # JobRunState
        attribute :job_summary_state, :type => :string # JobRunState
        attribute :latest_summary_progress_message, :type => :string
        attribute :progress_message, :type => :string
        attribute :result_id
        attribute :start_time, :type => :integer
        attribute :summary_done, :type => :boolean
        attribute :user, :type => :string
        has_many_identities :child_job_ids, :jobs, :all_name => :child_jobs
        has_one :error, :job_errors
        has_one_identity :parent_job_id, :jobs, :details_name => :parent_job
      end
    end
  end
end
