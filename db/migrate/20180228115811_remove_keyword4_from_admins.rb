class RemoveKeyword4FromAdmins < ActiveRecord::Migration[5.1]
  def change
    remove_column :admins, :keyword4, :string
  end
end
