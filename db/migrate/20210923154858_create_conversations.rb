class CreateConversations < ActiveRecord::Migration[5.2]
  def change
    create_table :conversations do |t|
      t.string :title
      t.string :subject
      t.string :contact_ids, array: true, default: [] 
      t.timestamps
    end
  end
end
