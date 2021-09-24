class RemoveContactIdsFromConversation < ActiveRecord::Migration[5.2]
  def change
    remove_column :conversations, :contact_ids, :string
  end
end
