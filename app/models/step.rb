class Step < ActiveRecord::Base

  belongs_to :person
  belongs_to :office
  belongs_to :file_record

  attr_accessor :email
  
  validates :office, presence: true
  
  before_create :save_person_by_email
  before_save :current_step
  
  def first_step email
    self.email = email
    self.office = Office.start_office
    save
  end
  
  def current_step
    file_record.step = self
  end
  
  def archivate
    self.office = Office.archive_office
    save
  end

  private
  
  def save_person_by_email
    self.person = Person.find_or_create_by email: email
  end
  
end
