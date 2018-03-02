class RemoveUserIdFromGreetings < ActiveRecord::Migration[5.1]
  def change
    remove_column :greetings, :user_id, :integer
  end
end
