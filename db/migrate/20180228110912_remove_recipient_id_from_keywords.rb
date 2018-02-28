class RemoveRecipientIdFromKeywords < ActiveRecord::Migration[5.1]
  def change
    remove_column :keywords, :recipient_id, :integer
  end
end
