require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest

	  setup do
    @topic = topics(:test)
    @user = users(:test)
  end

  test "invalid signup information" do
    get new_user_registration_path
    assert_no_difference 'User.count' do
      post user_registration_path, params: { user: {email: "user@invalid",
                                         encrypted_password:              "foo",
                                         password_confirmation: "bar" } }
    end
    assert_template  "devise/registrations/new"
  end

    test "valid signup information" do
    get new_user_registration_path
    assert_no_difference 'User.count' do
      post user_registration_path, params: { user: {email: @user.email,
                                         encrypted_password:    @user.encrypted_password,
                                         password_confirmation: @user.password_confirmation } }
    end
    assert_template  "devise/registrations/new"
        assert_select "a[href=?]", topics_path
    assert_select "a[href=?]", delrequests_path
    delete users_sign_out_path
    follow_redirect!
    assert_select "a[href=?]", topics_path
    assert_select "a[href=?]", delrequests_path
    assert_select "a[href=?]", new_user_registration_path
    assert_select "a[href=?]", new_user_session_path
  end
end
