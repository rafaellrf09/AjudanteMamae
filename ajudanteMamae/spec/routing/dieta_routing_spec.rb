require "rails_helper"

RSpec.describe DietaController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/dieta").to route_to("dieta#index")
    end

    it "routes to #new" do
      expect(:get => "/dieta/new").to route_to("dieta#new")
    end

    it "routes to #show" do
      expect(:get => "/dieta/1").to route_to("dieta#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/dieta/1/edit").to route_to("dieta#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/dieta").to route_to("dieta#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/dieta/1").to route_to("dieta#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/dieta/1").to route_to("dieta#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/dieta/1").to route_to("dieta#destroy", :id => "1")
    end

  end
end
