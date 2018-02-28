class RemoveKeyword1FromKeywords < ActiveRecord::Migration[5.1]
  def change
    remove_column :keywords, :keyword1, :string
  end
end
