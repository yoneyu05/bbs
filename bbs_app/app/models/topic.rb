class Topic < ApplicationRecord
	has_many :posts, dependent: :destroy
	default_scope -> { order(created_at: :desc) }
	validates :title, presence: true
	validates :content, length: {maximum: 1000}
	 mount_uploader :image, ImageUploader
end
