require 'rails_helper'

RSpec.describe WelcomeController, type: :controller do

  describe "GET #category" do
    it "returns http success" do
      get :category
      expect(response).to have_http_status(:success)
    end
  end

end
