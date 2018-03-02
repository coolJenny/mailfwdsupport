class RemoveGreetingIdFromKeywordgroups < ActiveRecord::Migration[5.1]
  def change
    remove_column :keywordgroups, :greeting_id, :integer
  end
end
