class RemoveKeywordIdFromKeywordgroups < ActiveRecord::Migration[5.1]
  def change
    remove_column :keywordgroups, :keyword_id, :integer
  end
end
