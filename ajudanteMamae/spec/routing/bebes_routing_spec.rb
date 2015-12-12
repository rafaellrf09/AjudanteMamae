require "rails_helper"

RSpec.describe BebesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/bebes").to route_to("bebes#index")
    end

    it "routes to #new" do
      expect(:get => "/bebes/new").to route_to("bebes#new")
    end

    it "routes to #show" do
      expect(:get => "/bebes/1").to route_to("bebes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/bebes/1/edit").to route_to("bebes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/bebes").to route_to("bebes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/bebes/1").to route_to("bebes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/bebes/1").to route_to("bebes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/bebes/1").to route_to("bebes#destroy", :id => "1")
    end

  end
end
