class Delrequest < ApplicationRecord
	validates :address, presence: true, length: {maximum: 100}
	validates :del_id, presence: true, length: {maximum: 100}
	validates :reason, presence: true, length: {maximum: 1000}
end
