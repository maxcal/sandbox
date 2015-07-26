require 'rails_helper'

RSpec.describe RegistrationsController, type: :controller do

  before do
    request.env["devise.mapping"] = Devise.mappings[:user]
  end

  subject { response }

  describe "GET #new" do
    before { get :new }
    it { should have_http_status(:success) }
    it "assigns a new User as @user" do
      expect(assigns[:user]).to be_a_new User
    end
    it "assigns a new company for the user" do
      expect(assigns[:user].company).to be_a_new Company
    end
  end

end
