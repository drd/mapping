class Content < ActiveRecord::Base
  belongs_to :offering
  has_many :mappings, :as => :mappable
  has_many :outcomes, :through => :mappings

  acts_as_list :scope => :offering_id
  
  accepts_nested_attributes_for :mappings
  
  validates :title, :presence => true
  validates_associated :mappings
end
