require "rails_helper"

RSpec.describe MotorsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/motors").to route_to("motors#index")
    end

    it "routes to #new" do
      expect(:get => "/motors/new").to route_to("motors#new")
    end

    it "routes to #show" do
      expect(:get => "/motors/1").to route_to("motors#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/motors/1/edit").to route_to("motors#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/motors").to route_to("motors#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/motors/1").to route_to("motors#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/motors/1").to route_to("motors#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/motors/1").to route_to("motors#destroy", :id => "1")
    end

  end
end
