class AddColumnsToAdmins < ActiveRecord::Migration[5.1]
  def change
    add_column :admins, :keyword1, :string
    add_column :admins, :keyword2, :string
    add_column :admins, :keyword3, :string
    add_column :admins, :keyword4, :string
    add_column :admins, :user_id, :integer
  end
end
