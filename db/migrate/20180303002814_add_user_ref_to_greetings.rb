class AddUserRefToGreetings < ActiveRecord::Migration[5.1]
  def change
    add_reference :greetings, :user, foreign_key: true
  end
end
