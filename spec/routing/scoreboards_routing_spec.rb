require "rails_helper"

RSpec.describe ScoreboardsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/scoreboards").to route_to("scoreboards#index")
    end

    it "routes to #new" do
      expect(:get => "/scoreboards/new").to route_to("scoreboards#new")
    end

    it "routes to #show" do
      expect(:get => "/scoreboards/1").to route_to("scoreboards#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/scoreboards/1/edit").to route_to("scoreboards#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/scoreboards").to route_to("scoreboards#create")
    end

    it "routes to #update" do
      expect(:put => "/scoreboards/1").to route_to("scoreboards#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/scoreboards/1").to route_to("scoreboards#destroy", :id => "1")
    end

  end
end
