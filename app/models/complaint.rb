class Complaint < ActiveRecord::Base
  include AASM
  include StonePath

  belongs_to :business
  validates_presence_of :story

  stonepath_workitem do |s|
    log_events

    aasm_initial_state :filed
    aasm_state :filed
    aasm_state :in_progress
    aasm_state :unresolved
    aasm_state :resolved
  end

end
