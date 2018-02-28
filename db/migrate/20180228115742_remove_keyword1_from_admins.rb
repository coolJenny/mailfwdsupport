class RemoveKeyword1FromAdmins < ActiveRecord::Migration[5.1]
  def change
    remove_column :admins, :keyword1, :string
  end
end
