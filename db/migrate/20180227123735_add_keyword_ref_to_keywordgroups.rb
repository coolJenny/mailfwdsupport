class AddKeywordRefToKeywordgroups < ActiveRecord::Migration[5.1]
  def change
    add_reference :keywordgroups, :keyword, foreign_key: true
  end
end
