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
  
end
