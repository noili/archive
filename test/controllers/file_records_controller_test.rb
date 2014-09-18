require 'test_helper'

class FileRecordsControllerTest < ActionController::TestCase

  test "create new file record" do
    post 'create', file_record:
        {name: 'legal', email: 'asd@example.com', tags: ['publico', 'otro']}
    assert_not_nil flash[:notice]
    assert_redirected_to FileRecord.last
  end
  
  test "archivate file record" do
    file_record = FileRecord.create(title: 'legal')
    put :archivate, file_record_id: file_record.id
    assert_not_nil flash[:notice]
    assert_redirected_to file_records_path
  end
  
  test "it should create a person with the email in step" do
    post 'create', file_record:
        {name: 'legal', email: 'asd@example.com', tags: ['publico', 'otro']}
    assert FileRecord.last.steps.last.person.email == 'asd@example.com'
  end
  
end
