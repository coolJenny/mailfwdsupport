class Greeting < ApplicationRecord
	belongs_to :keywordgroup, required: false
	belongs_to :user

	validates :name, presence: true
	validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
end
