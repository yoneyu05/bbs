class Post < ApplicationRecord
	belongs_to :topic
	 mount_uploader :image, ImageUploader
end
