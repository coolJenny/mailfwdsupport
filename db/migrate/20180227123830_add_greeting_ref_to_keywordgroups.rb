class AddGreetingRefToKeywordgroups < ActiveRecord::Migration[5.1]
  def change
    add_reference :keywordgroups, :greeting, foreign_key: true
  end
end
