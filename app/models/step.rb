class Step < ActiveRecord::Base

  belongs_to :person
  belongs_to :office
  belongs_to :file_record
  
  def first_step
    self.office = Office.start_office
    save
  end
  
end
