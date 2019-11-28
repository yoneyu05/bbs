class Delrequest < ApplicationRecord
	validates :address, presence: true, length: {maximum: 100}
end
