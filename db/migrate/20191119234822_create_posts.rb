class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.text :content
      t.string :name
      t.timestamps
    end
    add_index :posts, [:topic_id, :created_at]
  end
end
