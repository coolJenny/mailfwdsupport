class AddKeywordgroupIdToGreetings < ActiveRecord::Migration[5.1]
  def change
    add_column :greetings, :keywordgroup_id, :integer
  end
end
