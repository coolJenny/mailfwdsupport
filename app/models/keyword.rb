class Keyword < ApplicationRecord
	belongs_to :keywordgroup
	belongs_to :user
end
