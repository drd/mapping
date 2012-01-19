class Offering < ActiveRecord::Base
  belongs_to :term
  has_many :outcomes, :through => :term

  has_many :content_groups do
    def build_with_content
      new_group = self.build
      new_group.content.build_with_mappings(proxy_association.owner.outcomes)
      return new_group
    end
  end

  has_many :content, :through => :content_groups
  
  # don't accept unnamed content groups with no content attributes
  accepts_nested_attributes_for :content_groups, reject_if: ->(cg) do
    cg['name'].blank? and (cg['content_attributes'].none? do |i,c|
                             ContentGroup::REJECT.call(c)
                           end)
  end

  validates :title, :presence => true
  validates_associated :content_groups


  def prepare_for_form
    content_groups.each {|cg| cg.content.build_with_mappings(term.outcomes) }
    content_groups.build_with_content
  end
end
