class OutcomeMapping < ActiveRecord::Base
  belongs_to :outcome_group
  belongs_to :outcome
end
