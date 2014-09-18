require 'test_helper'

class StepTest < ActiveSupport::TestCase
  
  def office
    offices :computo
  end
  
  def person
    people :emmet
  end
    
  test "create step with existant office" do
    step = Step.create office: office
    assert step.office.name == 'Computo'
  end
  
  test "should not create step with inexistant office" do
    step = Step.new
    assert !step.valid?
  end
  
  test "create step with email" do
    step = Step.create office: office, email: person.email
    assert step.person == person
  end
  
  test "create step an person with email" do
    step = Step.create office: office, email: 'inexistant@mail.com'
    assert step.person.email == 'inexistant@mail.com'
  end
  

end
