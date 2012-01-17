class OutcomeGroup < ActiveRecord::Base
  has_many :terms
  has_many :outcome_mappings
  has_many :outcomes, :through => :outcome_mappings
end
