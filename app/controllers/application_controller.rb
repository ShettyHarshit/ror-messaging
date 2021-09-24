class ApplicationController < ActionController::API

  private

  def check_headers
    @current_contact = Contact.find request.headers.env['HTTP_USER_ID']
  end
end
