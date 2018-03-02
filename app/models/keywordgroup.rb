class Keywordgroup < ApplicationRecord
	has_many :keywords
	has_many :greetings
	belongs_to :user
end
