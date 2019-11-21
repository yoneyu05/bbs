class Post < ApplicationRecord
	belongs_to :topic
	default_scope -> { order(created_at: :desc) }
	 mount_uploader :image, ImageUploader
	 validates :content, presence: true
end
