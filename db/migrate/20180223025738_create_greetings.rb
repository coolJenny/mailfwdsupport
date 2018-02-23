class CreateGreetings < ActiveRecord::Migration[5.1]
  def change
    create_table :greetings do |t|
      t.string :name
      t.string :email
      t.boolean :cc_state
      t.integer :user_id

      t.timestamps
    end
  end
end
