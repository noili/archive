require 'test_helper'

class OfficeTest < ActiveSupport::TestCase

  test "should return the first office a file record should be in" do
    assert Office.start_office.name == 'Mesa de Entrada'
  end
  
  test "should return the last possible office a file record can be in" do
    assert Office.archive_office.name == 'Archivo'
  end
  
end
