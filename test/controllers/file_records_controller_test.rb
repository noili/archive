require 'test_helper'

class FileRecordsControllerTest < ActionController::TestCase
  test "create new file record" do
    post 'create', file_record:
        {name: 'legal', email: 'asd@example.com', tags: ['publico', 'otro']}
    assert_not_nil flash[:notice]
    assert_redirected_to FileRecord.last
  end
  
end
