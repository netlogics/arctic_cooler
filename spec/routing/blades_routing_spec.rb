require "rails_helper"

RSpec.describe BladesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/blades").to route_to("blades#index")
    end

    it "routes to #new" do
      expect(:get => "/blades/new").to route_to("blades#new")
    end

    it "routes to #show" do
      expect(:get => "/blades/1").to route_to("blades#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/blades/1/edit").to route_to("blades#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/blades").to route_to("blades#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/blades/1").to route_to("blades#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/blades/1").to route_to("blades#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/blades/1").to route_to("blades#destroy", :id => "1")
    end

  end
end
