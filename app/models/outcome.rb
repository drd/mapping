class Outcome < ActiveRecord::Base
  has_many :mappings
  has_many :mappable, :through => :mappings

  validates :title, :key, :presence => true
  validates :key, :format => {
    :with => /[A-Z]/,
    :message => 'only singular capital letters allowed'
  }
end
