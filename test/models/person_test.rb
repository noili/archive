require 'test_helper'

class PersonTest < ActiveSupport::TestCase

  test "complete person" do
    assert people(:emmet).completed?
  end
  
  test "incomplete person" do
    assert !people(:incomplete).completed?
  end
  
end
