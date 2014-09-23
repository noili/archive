require 'test_helper'

class FileRecordTest < ActiveSupport::TestCase

  test "when creating file record it should create first step" do
    file_record = FileRecord.create
    assert !file_record.steps.empty?
  end
  
  test "when creating file record first step should be mesa de entrada" do
    file_record = FileRecord.create
    assert file_record.steps.first.office == Office.start_office
  end
  
  test "when archivating file record last step should be archivate" do
    file_record = FileRecord.create
    file_record.archivate
    assert file_record.steps.last.office == Office.archive_office
  end
  
  test "it should create step with email" do
    file_record = FileRecord.create email: 'some@email.com'
    assert file_record.steps.last.person.email == 'some@email.com'
  end
  
  test "there should be an atribute in file record that poinst to last step" do
    file_record = FileRecord.create
    assert file_record.steps.last == file_record.step
  end
  
end
