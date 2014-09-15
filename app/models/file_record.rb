class FileRecord < ActiveRecord::Base

  has_many :steps
  has_and_belongs_to_many :tags
  
  after_create :create_first_step
  
  def create_first_step
    steps.build.first_step
  end
  
end
