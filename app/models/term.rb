class Term < ActiveRecord::Base
  has_many :offerings
  belongs_to :outcome_group
  has_many :outcomes, :through => :outcome_group

  def self.current_term
    return first
  end
end
