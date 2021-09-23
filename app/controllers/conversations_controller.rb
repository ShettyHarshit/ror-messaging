class ConversationsController < ApplicationController
  def index
    @conversations = Conversation.last(10)
    render json: @conversations
  end 

  def create
    @conversation = Conversation.new(conversation_params)
    if @conversation.save
      render json: @conversation, status: 200
    else
      render json: @conversation.errors, status: :unprocessable_entity
    end
  end

  private
    def conversation_params
      params.require(:conversation).permit(:title, :subject, contact_ids: [])
    end
end
