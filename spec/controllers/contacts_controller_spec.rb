require 'rails_helper'

RSpec.describe ContactsController, type: :request do
  describe 'GET #index' do
    before do
      create(:contact)
    end
    subject { get '/contacts' }
    it 'should render the contact page' do
      expect(subject).to render_template(:index)
    end
  end
  describe 'GET #show' do
    before do
      create(:contact)
    end
    subject { get "/contacts/#{@contact.id}" }
    it 'should render the contact page' do
      expect(subject).to render_template(:show)
    end
  end
  describe 'POST #create' do
    let(:headers) do
      { 'Accept' => 'application/json', 'Content-Type' => 'application/json' }
    end
    let(:contact_params) { attributes_for(:contact) }

    context 'when a valid request is made' do
      it 'creates the contact and return status 204' do
        post '/contacts', params: contact_params.to_json, headers: headers
        expect(response).to have_http_status(:created)
      end
    end
    context 'when a non json request is made' do
      it 'refuses to create and returns 406' do
        post '/contacts', params: contact_params.to_json
        expect(response).to have_http_status(:not_acceptable)
      end
    end
    context 'when email is not sent' do
      it 'returns a 422 error' do
        invalid_attributes = attributes_for(:contact, email: nil)
        post '/contacts', params: invalid_attributes.to_json, headers: headers
        expect(response).to have_http_status(422)
      end
    end
  end
end
