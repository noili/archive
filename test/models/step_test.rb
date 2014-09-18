require 'test_helper'

class StepTest < ActiveSupport::TestCase
  
  test "create step with existant office" do
    office = offices :computo
    step = Step.create office: office
    assert step.office.name == 'Computo'
  end
  
  test "create step with inexistant office" do
    step = Step.new
    assert !step.valid?
  end
  
  test "create step with email" do
    office = offices :computo
    person = people :emmet
    step = Step.create office: office, email: person.email
    assert step.person == person
  end
  
  test "create step an person with email" do
    office = offices :computo
    step = Step.create office: office, email: 'inexistant@mail.com'
    assert step.person.email == 'inexistant@mail.com'
  end
  
end
