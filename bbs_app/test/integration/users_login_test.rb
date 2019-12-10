require 'test_helper'

class UsersLoginTest < ActionDispatch::IntegrationTest

  def setup
    @user = users(:test)
  end

  test "login with invalid information" do
    get new_user_session_path
    assert_template "devise/sessions/new"
    post  user_session_path, params: { session: { email: "", password: "" } }
    assert_template "devise/sessions/new"
    get topics_path
  end

    test "login with valid information" do
    get new_user_session_path
    post user_session_path, params: { session: { email: @user.email,
                                        		encrypted_password: @user.password } }
    assert_template "devise/sessions/new"
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
