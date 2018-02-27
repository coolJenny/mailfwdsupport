class Keywordgroup < ApplicationRecord
	belongs_to :keyword
	belongs_to :greeting
	belongs_to :user
end
