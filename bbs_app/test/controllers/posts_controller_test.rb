require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @topic = topics(:test)
    @post = posts(:test)
  end

    test "should be valid" do
    assert @post.valid?
  end

  test "content should not be too long" do
    @post.content = "a" * 10001
    assert_not @post.valid?
  end

  test "should create post" do
    assert_difference('Post.count') do
      post posts_url, params: { post: { content: @post.content, name: @post.name, id: @post.id, topic_id: @topic.id} }
    end

    assert_redirected_to topics_show_path(@post.topic_id)
  end

  test "should update post" do
    patch post_url(@post), params: { post: { content: @post.content, name: @post.name, id: @post.id, topic_id: @topic.id} }
    assert_redirected_to topics_show_path(@post.topic_id)
  end

  test "should destroy post" do
    assert_difference('Post.count', -1) do
      delete post_url(@post)
    end
    assert_redirected_to topics_show_path(@post.topic_id)
  end
end
