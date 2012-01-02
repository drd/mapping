class Mapping < ActiveRecord::Base
  belongs_to :mappable, :polymorphic => true
  belongs_to :outcome

  validates :value, :mappable_id, :presence => true
end
