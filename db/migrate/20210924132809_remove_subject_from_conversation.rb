class RemoveSubjectFromConversation < ActiveRecord::Migration[5.2]
  def change
    remove_column :conversations, :subject, :string
  end
end
