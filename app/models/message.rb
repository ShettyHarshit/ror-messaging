class Message < ApplicationRecord
  belongs_to :conversation 
  belongs_to :sender, :class_name => :Contact, :foreign_key => "sender_id"

  def sender_name
    sender.name
  end

  def contact_ids
    conversation.contact_ids
  end
end
