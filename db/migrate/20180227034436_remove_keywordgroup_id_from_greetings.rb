class RemoveKeywordgroupIdFromGreetings < ActiveRecord::Migration[5.1]
  def change
    remove_column :greetings, :keywordgroup_id, :integer
  end
end
