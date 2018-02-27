class RemoveRecipientIdFromKeywordgroups < ActiveRecord::Migration[5.1]
  def change
    remove_column :keywordgroups, :recipient_id, :integer
  end
end
