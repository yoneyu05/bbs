require 'test_helper'

class TopicsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @topic = topics(:test)
    @user = users(:test)
  end

  test "should get topics" do
  get topics_path
  assert_response :success
end

test "should get show" do
get topics_show_path(@topic.id)
assert_response :success
end

  test "should create topic" do
    assert_difference('Topic.count') do
      post topics_path, params: { topic: { content: @topic.content, name: @topic.name, title: @topic.title, id: @topic.id} }
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
