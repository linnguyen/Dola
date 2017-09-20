class Payment < ApplicationRecord
	validates :name, :user_id, :fee, presence: true
	validates :fee, numericality: {greater_than_or_equal_to: 0}, presence: true

	belongs_to :user
end
