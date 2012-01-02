class Offering < ActiveRecord::Base
  has_many :content do
    def build_with_mappings
      new_content = self.build
      Outcome.all.each do |outcome|
        new_content.mappings.build(:outcome => outcome)
      end
      return new_content
    end
  end

  has_many :mappings, :through => :content
  has_many :outcomes, :through => :mappings
  
  accepts_nested_attributes_for :content, reject_if: ->(c) { c['title'].blank? }

  validates :title, :presence => true
  validates_associated :content
end
