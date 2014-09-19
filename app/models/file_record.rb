class FileRecord < ActiveRecord::Base

  has_many :steps
  has_and_belongs_to_many :tags

  attr_accessor :email, :tag_list
  
  after_create :create_first_step
  before_create :associate_tags
  
  def archivate
    steps.build.archivate
  end
  
  private
  
  def create_first_step
    steps.build.first_step email
  end
  
  def create_tag_list
    tag_list.split(',').map do |tag|
      Tag.find_or_create_by name: tag
    end
  end
  
  def associate_tags
    self.tags = create_tag_list if tag_list
  end
  
end
