class FileRecord < ActiveRecord::Base

  has_many :steps
  has_and_belongs_to_many :tags
  
end
