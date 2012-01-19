class Mapping < ActiveRecord::Base
  belongs_to :mappable, :polymorphic => true
  belongs_to :outcome

  before_save :coerce_value_to_zero

  def coerce_value_to_zero
    if value.blank?
      value = 0
    end
  end
end
