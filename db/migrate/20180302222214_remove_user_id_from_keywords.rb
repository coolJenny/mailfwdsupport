class RemoveUserIdFromKeywords < ActiveRecord::Migration[5.1]
  def change
    remove_column :keywords, :user_id, :integer
  end
end
