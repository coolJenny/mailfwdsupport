class RemoveUserIdFromKeywordgroups < ActiveRecord::Migration[5.1]
  def change
    remove_column :keywordgroups, :user_id, :integer
  end
end
