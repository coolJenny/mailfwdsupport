class RemoveKeyword2FromAdmins < ActiveRecord::Migration[5.1]
  def change
    remove_column :admins, :keyword2, :string
  end
end
