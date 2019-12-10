require 'test_helper'

class PostFlowTest < ActionDispatch::IntegrationTest

  def setup
  	@topic = topics(:test)
  	@post = posts(:test)
    @user = users(:test)
  end

test "make post flow" do
	get topics_path
	assert_response :success
	#トピック作成
	assert_difference('Topic.count') do
		post topics_path, params: { topic: { content: @topic.content, name: @topic.name, title: @topic.title, id: @topic.id} }
	end
	assert_redirected_to topics_path
	get topics_show_path(@topic)
	assert_response :success
	#ポスト作成
	assert_difference('Post.count') do
		post posts_path, params: { post: { content: @post.content, name: @post.name, id: @post.id, topic_id: @topic.id} }
	end
	assert_redirected_to topics_show_path(@topic)
	get topics_path
	get new_user_session_path
	#ユーザー登録
	post user_session_path, params: { session: { email: @user.email,
	                                    		encrypted_password: @user.encrypted_password } }
	assert_template "devise/sessions/new"
	assert_select "a[href=?]", topics_path
	assert_select "a[href=?]", delrequests_path
	get topics_show_path(@topic)
	#ポスト削除
    assert_difference('Post.count', -1) do
      delete post_url(@post)
    end
	assert_redirected_to topics_show_path(@post.topic_id)
	#トピック削除
    assert_difference('Topic.count', -1) do
      delete topic_url(@topic)
    end
	#ログアウト
	delete users_sign_out_path
	follow_redirect!
	assert_select "a[href=?]", topics_path
	assert_select "a[href=?]", delrequests_path
	assert_select "a[href=?]", new_user_registration_path
	assert_select "a[href=?]", new_user_session_path
end
end
