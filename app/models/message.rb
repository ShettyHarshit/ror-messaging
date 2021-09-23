class Message < ApplicationRecord
  belongs_to :conversation 
  belongs_to :sender, :class_name => :Contact, :foreign_key => "sender_id"
end