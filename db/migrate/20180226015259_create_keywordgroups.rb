class CreateKeywordgroups < ActiveRecord::Migration[5.1]
  def change
    create_table :keywordgroups do |t|
      t.integer :keywords_id
      t.integer :recipient_id
      t.integer :user_id

      t.timestamps
    end
  end
end
