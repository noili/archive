class Person < ActiveRecord::Base

  has_many :steps
  
  def completed?
    name && dni && email
  end
  
end
