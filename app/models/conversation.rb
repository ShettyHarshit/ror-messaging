class Conversation < ApplicationRecord
  has_and_belongs_to_many :contacts
  has_many :messages
end
