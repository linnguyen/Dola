class Payment < ApplicationRecord
	validatates :name, :user_id, :fee, presence: true
	validatates :fee, numericality: {greater_than_or_equal_to: 0}, presence: true

	belongs_to :user
end
