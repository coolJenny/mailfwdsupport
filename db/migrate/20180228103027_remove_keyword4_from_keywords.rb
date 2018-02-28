class RemoveKeyword4FromKeywords < ActiveRecord::Migration[5.1]
  def change
    remove_column :keywords, :keyword4, :string
  end
end
