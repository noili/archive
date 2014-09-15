class Office < ActiveRecord::Base

  has_many :steps
  
  def self.start_office
    Office.find_or_create_by name: 'Mesa de Entrada'
  end
  
end
