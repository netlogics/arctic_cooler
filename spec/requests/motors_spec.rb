require 'rails_helper'

RSpec.describe "Motors", type: :request do
  describe "GET /motors" do
    it "works! (now write some real specs)" do
      get motors_path
      expect(response).to have_http_status(200)
    end
  end
end
