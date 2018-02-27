class AddKeywordgroupIdToKeywords < ActiveRecord::Migration[5.1]
  def change
    add_column :keywords, :keywordgroup_id, :integer
  end
end
