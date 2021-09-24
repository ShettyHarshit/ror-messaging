class ConversationsController < ApplicationController
  before_action :check_headers

  def index
    @conversations = @current_contact.conversations.last(10)
    render json: @conversations.as_json(methods: :last_message)
  end 
  
  def show
    @conversation = @current_contact.conversations.find(params[:id])
    render json: @conversation.as_json(methods: [:recent_messages, :participants])
  end 

  def create
    contacts = params[:conversation]
    @conversation = Conversation.new(conversation_params)
    @conversation.contacts = Contact.find(params[:contact_ids])
    @conversation.contacts << @current_contact
    if @conversation.save
      render json: @conversation.as_json(methods: [:recent_messages, :participants]), status: 200
    else
      render json: @conversation.errors, status: :unprocessable_entity
    end
  end

  private
    def conversation_params
      params.require(:conversation).permit(:title, :contact_ids)
    end
end
