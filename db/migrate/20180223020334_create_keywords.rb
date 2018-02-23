class CreateKeywords < ActiveRecord::Migration[5.1]
  def change
    create_table :keywords do |t|
      t.string :keyword1
      t.string :keyword2
      t.string :keyword3
      t.string :keyword4

      t.timestamps
    end
  end
end
