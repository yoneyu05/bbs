class AddPostToTopics < ActiveRecord::Migration[5.1]
  def change
    add_reference :topics, :posts, foreign_key: true
  end
end
