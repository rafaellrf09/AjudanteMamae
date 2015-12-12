require "rails_helper"

RSpec.describe FarmaciaController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/farmacia").to route_to("farmacia#index")
    end

    it "routes to #new" do
      expect(:get => "/farmacia/new").to route_to("farmacia#new")
    end

    it "routes to #show" do
      expect(:get => "/farmacia/1").to route_to("farmacia#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/farmacia/1/edit").to route_to("farmacia#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/farmacia").to route_to("farmacia#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/farmacia/1").to route_to("farmacia#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/farmacia/1").to route_to("farmacia#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/farmacia/1").to route_to("farmacia#destroy", :id => "1")
    end

  end
end
