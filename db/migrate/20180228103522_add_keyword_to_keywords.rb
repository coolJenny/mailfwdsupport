class AddKeywordToKeywords < ActiveRecord::Migration[5.1]
  def change
    add_column :keywords, :keyword, :string
  end
end
