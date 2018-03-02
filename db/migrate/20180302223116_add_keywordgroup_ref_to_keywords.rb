class AddKeywordgroupRefToKeywords < ActiveRecord::Migration[5.1]
  def change
    add_reference :keywords, :keywordgroup, foreign_key: true
  end
end
