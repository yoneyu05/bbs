require 'test_helper'

class UserTest < ActiveSupport::TestCase

  setup do
    @user = users(:test)
  end

  test "should be valid" do
  assert @user.valid?
end
end
