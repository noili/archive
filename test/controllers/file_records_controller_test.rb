require 'test_helper'

class FileRecordsControllerTest < ActionController::TestCase

  test "create new file record" do
    post 'create', file_record:
        {title: 'legal', email: 'asd@example.com'}
    assert_redirected_to FileRecord.last
  end
  
  test "archivate file record" do
    file_record = FileRecord.create(title: 'legal')
    put :archivate, file_record_id: file_record.id
    assert_redirected_to file_records_path
  end
  
  test "it should create a person with the email in step" do
    post 'create', file_record:
        {title: 'legal', email: 'asd@example.com'}
    assert FileRecord.last.steps.last.person.email == 'asd@example.com'
  end
  
  test "should create tags when creating file records" do
    post 'create', file_record:
        {title: 'legal', email: 'asd@example.com', tag_list: 'publico, otro'}
    assert FileRecord.last.tags.count == 2
  end
  
  test "should render new when creating file record with wrong attributes" do
    FileRecord.any_instance.stubs(:valid?).returns false
    post 'create', file_record:
        {email: 'asd@example.com'}
    assert response.body == {status: 500}.to_json
  end
  
end
