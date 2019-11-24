require 'test_helper'

class TopicsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @topic = Topic.new(name: "test", title: "test", content: "test", id: 999)
  end

    test "should be valid" do
    assert @topic.valid?
  end

  test "should get index" do
    get topics_url
    assert_response :success
  end

  test "should create topic" do
    assert_difference('Topic.count') do
      post topics_show_url, params: { topic: { content: @topic.content, name: @topic.name, title: @topic.title, id: @topic.id} }
    end
    assert_redirected_to topics_show_url(Topic.last)
  end

  # test "should show topic" do
  #   get topic_url(@topic)
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
