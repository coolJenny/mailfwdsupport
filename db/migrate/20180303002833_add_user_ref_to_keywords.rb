class AddUserRefToKeywords < ActiveRecord::Migration[5.1]
  def change
    add_reference :keywords, :user, foreign_key: true
  end
end
