require 'test_helper'

class StepTest < ActiveSupport::TestCase
  
  def office
    offices :computo
  end
  
  def person
    people :emmet
  end
    
  test "create step with existant office" do
    step = Step.create office: office, file_record: file_records(:legal)
    assert step.office.name == 'Computo'
  end
  
  test "should not create step with inexistant office" do
    step = Step.new
    assert !step.valid?
  end
  
  test "create step with email" do
    step = Step.create office: office, email: person.email, file_record: file_records(:legal)
    assert step.person == person
  end
  
  test "create step an person with email" do
    step = Step.create office: office, email: 'inexistant@mail.com', file_record: file_records(:legal)
    assert step.person.email == 'inexistant@mail.com'
  end
  

end
