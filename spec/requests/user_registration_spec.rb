require 'rails_helper'

describe 'User registration' do

  let(:valid_attributes) do
    {
      user: {
        email: 'test@example.com',
        password: 'p4ssword',
        password_confirmation: 'p4ssword',
        company_attributes: {
          name: 'Acme'
        }
      }
    }
  end

  describe 'POST /users' do

    it 'creates a user' do
      expect {
        post '/users', valid_attributes
      }.to change(User, :count).by(+1)
    end

    it 'creates a company' do
      expect {
        post '/users', valid_attributes
      }.to change(Company, :count).by(+1)
    end

    it 'creates a company with the correct name' do
      post '/users', valid_attributes
      expect(Company.last.name).to eq 'Acme'
    end

  end
end
