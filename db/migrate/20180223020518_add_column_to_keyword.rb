class AddColumnToKeyword < ActiveRecord::Migration[5.1]
  def change
    add_column :keywords, :user_id, :integer
  end
end
