class Conversation < ApplicationRecord
  has_and_belongs_to_many :contacts
  has_many :messages

  def last_message
    messages.order(:created_at).limit(1)
  end

  def recent_messages
    messages.order(created_at: :desc).limit(10)
  end

  def participants 
    contacts.as_json(only: [:name, :id])
  end
end
