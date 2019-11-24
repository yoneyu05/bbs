class Topic < ApplicationRecord
	has_many :posts, dependent: :destroy
	default_scope -> { order(created_at: :desc) }
	 mount_uploader :image, ImageUploader
end
