class RemoveKeyword3FromKeywords < ActiveRecord::Migration[5.1]
  def change
    remove_column :keywords, :keyword3, :string
  end
end
