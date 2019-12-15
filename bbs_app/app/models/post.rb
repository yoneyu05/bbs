class Post < ApplicationRecord
	belongs_to :topic
	default_scope -> { order(id: :asc) }
	 mount_uploader :image, ImageUploader
	 validates :content, presence: true, length: {maximum: 1000}
	 validates :topic_id, presence: true

	 def self.search(search)
      if search
        Post.where(['content LIKE ?', "%#{search}%"])
      else
        Post.all
      end
    end
end
