class MessagesController < ApplicationController
  def show
    @message = Conversation.find(params[:conversation_id]).messages.find(params[:id])
    render json: @message.as_json(methods: :sender_name)
  end 

  def create
    @message = Message.new(message_params)
    if @message.save
      render json: @message, status: 200
    else
      render json: @message.errors, status: :unprocessable_entity
    end
  end 

  private
  def message_params
    params.require(:message).permit(:content, :conversation_id, :sender_id)
  end

end
