class AddColumnsToKeyword < ActiveRecord::Migration[5.1]
  def change
    add_column :keywords, :recipient_id, :integer
  end
end
