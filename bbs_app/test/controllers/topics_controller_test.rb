require 'test_helper'

class TopicsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @topic = Topic.new(name: "test", title: "test", content: "test", id: 999)
    @user = User.new(email: 				"user@example.com",
                     password:              "password",
                     password_confirmation: "password")
  end

  test "should get topics" do
  get topics_url
  assert_response :success
end

test "should get show" do
get topics_show_url
assert_response :success
end

  test "should create topic" do
    assert_difference('Topic.count') do
      post topics_url, params: { topic: { content: @topic.content, name: @topic.name, title: @topic.title, id: @topic.id} }
    end
    assert_redirected_to topics_path
  end

  # test "should show topic" do
  #   post topics_url, params: { topic: { content: @topic.content, name: @topic.name, title: @topic.title, id: @topic.id} }
  #   get topics_show_url(@topic.id), params: { id: @topic.id }, headers: { "HTTP_REFERER" => "http://example.com/topic/show" }
  #   assert_response :success
  # end

  # test "should update topic" do
  #   patch topic_url(@topic), params: { topic: { content: @topic.content, name: @topic.name, title: @topic.title} }
  #   assert_redirected_to topic_url(@topic)
  # end

  # test "should destroy topic" do
  #   assert_difference('Topic.count', -1) do
  #     delete topic_url(@topic)
  #   end

  #   assert_redirected_to topics_url
  # end

end
