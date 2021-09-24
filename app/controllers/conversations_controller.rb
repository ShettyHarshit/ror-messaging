class ConversationsController < ApplicationController
  before_action :check_headers

  def index
    @conversations = @current_contact.conversations.last(10)
    render json: @conversations.as_json(methods: :last_message)
  end 
  
  def show
    @conversation = @current_contact.conversations.find(params[:id])
    render json: @conversation.as_json(methods: :recent_messages)
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
