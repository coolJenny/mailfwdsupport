class RemoveKeywordgroupIdFromKeywords < ActiveRecord::Migration[5.1]
  def change
    remove_column :keywords, :keywordgroup_id, :integer
  end
end
