class RemoveKeyword3FromAdmins < ActiveRecord::Migration[5.1]
  def change
    remove_column :admins, :keyword3, :string
  end
end
