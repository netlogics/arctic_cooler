require 'rails_helper'

RSpec.describe "MotorDetails", type: :request do
  describe "GET /motor_details" do
    it "works! (now write some real specs)" do
      get motor_details_path
      expect(response).to have_http_status(200)
    end
  end
end
