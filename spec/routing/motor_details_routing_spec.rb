require "rails_helper"

RSpec.describe MotorDetailsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/motor_details").to route_to("motor_details#index")
    end

    it "routes to #new" do
      expect(:get => "/motor_details/new").to route_to("motor_details#new")
    end

    it "routes to #show" do
      expect(:get => "/motor_details/1").to route_to("motor_details#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/motor_details/1/edit").to route_to("motor_details#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/motor_details").to route_to("motor_details#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/motor_details/1").to route_to("motor_details#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/motor_details/1").to route_to("motor_details#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/motor_details/1").to route_to("motor_details#destroy", :id => "1")
    end

  end
end
