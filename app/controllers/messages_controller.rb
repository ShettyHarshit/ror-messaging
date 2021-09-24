class MessagesController < ApplicationController
  before_action :check_headers

  def show
    @message = Conversation.find(params[:conversation_id]).messages.find(params[:id])
    render json: @message.as_json(methods: :sender_name)
  end 

  def create
    @message = Conversation.find(params[:conversation_id]).messages.create(message_params)
    @message.sender_id = @current_contact.id
    if @message.save
      ActionCable.server.broadcast :notifications_channel, @message.as_json(methods: [:contact_ids, :sender_name])
      render json: @message, status: 200
    else
      render json: @message.errors, status: :unprocessable_entity
    end
  end 

  private
  def message_params
    params.require(:message).permit(:content)
  end

end
