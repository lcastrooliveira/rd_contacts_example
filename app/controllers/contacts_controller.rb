# app/controllers/contacts_controller.rb
class ContactsController < ApplicationController
  before_action :ensure_json_request, only: :create
  protect_from_forgery with: :null_session, only: :create

  def create
    contact = Contact.new(contact_params)
    contact.ip = request.remote_ip
    if contact.save
      head :created, location: contact_path(contact)
    else
      render json: { errors: contact.errors }, status: 422
    end
  end

  private

  def ensure_json_request
    return if request.content_type =~ /json/
    head :not_acceptable
  end

  def contact_params
    params.require(:contact).permit(:email, :message, urls: { pages: [:url, :timestamp] })
  end
end
