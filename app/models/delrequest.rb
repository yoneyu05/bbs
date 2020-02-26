class Delrequest < ApplicationRecord
	validates :address, presence: true
	validates :del_id, presence: true
	validates :reason, presence: true, length: {maximum: 1000}
end
