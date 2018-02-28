class RemoveKeyword2FromKeywords < ActiveRecord::Migration[5.1]
  def change
    remove_column :keywords, :keyword2, :string
  end
end
