require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @topic = topics(:test)
    @post = Post.new(name: "test", content: "test", topic_id: @topic.id)
  end

    test "should be valid" do
    assert @post.valid?
  end

  test "content should not be too long" do
    @post.content = "a" * 10001
    assert_not @post.valid?
  end

  # test "should create post" do
  #   assert_difference('Post.count') do
  #     post posts_url, params: { post: { content: @post.content, name: @post.name } }
  #   end

  #   assert_redirected_to post_url(Post.last)
  # end

  # test "should update post" do
  #   patch post_url(@post), params: { post: { content: @post.content, name: @post.name } }
  #   assert_redirected_to post_url(@post)
  # end

  # test "should destroy post" do
  #   assert_difference('Post.count', -1) do
  #     delete post_url(@post)
  #   end
  #   assert_redirected_to posts_url
  # end
end
