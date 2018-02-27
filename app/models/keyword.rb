class Keyword < ApplicationRecord
	has_many :keywordgroups
	belongs_to :user
end
