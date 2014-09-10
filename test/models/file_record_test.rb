require 'test_helper'

class FileRecordTest < ActiveSupport::TestCase

  test "complete file_record" do
    assert file_records(:initial).completed?
  end
  
end
