require 'test_helper'

class TopicTest < ActiveSupport::TestCase

  setup do
    @topic = Topic.new(name: "test", title: "test", content: "test", id: 999)
    end

    test "topic should be valid" do
    assert @topic.valid?
  end

      test "contet should not be too long" do
        @topic.content = "a" * 10001
    assert_not @topic.valid?
  end
end
