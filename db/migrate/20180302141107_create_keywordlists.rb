class CreateKeywordlists < ActiveRecord::Migration[5.1]
  def change
    create_table :keywordlists do |t|
      t.integer :user_id
      t.integer :keyword_id
      t.integer :greeting_id

      t.timestamps
    end
  end
end
