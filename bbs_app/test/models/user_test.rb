require 'test_helper'

class UserTest < ActiveSupport::TestCase

  setup do
    @user = User.new(email: 				"user@example.com",
                     password:              "password",
                     password_confirmation: "password")
  end

  test "should be valid" do
  assert @user.valid?
end
end
