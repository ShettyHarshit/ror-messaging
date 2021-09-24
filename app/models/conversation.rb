class Conversation < ApplicationRecord
  has_and_belongs_to_many :contacts
  has_many :messages

  def last_message
    messages.last
  end

  def recent_messages
    messages.last(10)
  end
end
