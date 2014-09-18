require 'test_helper'

class StepsControllerTest < ActionController::TestCase

  test "move file record through offices" do
    file_record = file_records(:legal)
    office = offices :computo
    step = {office_id: office.id}
    post :create, step: step, file_record_id: file_record.id
    assert file_record.steps.last.office.name == 'Computo'
  end
  
end
