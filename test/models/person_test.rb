require 'test_helper'

class PersonTest < ActiveSupport::TestCase

  test "complete person" do
    assert people(:emmet).completed?
  end
  
end
