class RemoveKeywordsIdFromKeywordgroups < ActiveRecord::Migration[5.1]
  def change
    remove_column :keywordgroups, :keywords_id, :integer
  end
end
