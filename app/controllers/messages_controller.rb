class MessagesController < ApplicationController
  def index
    @messages = Message.last(10)
    render json: @messages
  end 
end
