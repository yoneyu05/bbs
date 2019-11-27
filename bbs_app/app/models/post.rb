class Post < ApplicationRecord
	belongs_to :topic
	default_scope -> { order(created_at: :asc) }
	 mount_uploader :image, ImageUploader
	 validates :content, presence: true, length: {maximum: 10000}
	 validates :topic_id, presence: true
end
