class Mapping < ActiveRecord::Base
  belongs_to :mappable, :polymorphic => true
  belongs_to :outcome

  validates :value, :presence => true
end
