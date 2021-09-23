class CreateContactsConversationsJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_join_table :contacts, :conversations
  end
end
