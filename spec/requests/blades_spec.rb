require 'rails_helper'

RSpec.describe "Blades", type: :request do
  describe "GET /blades" do
    it "works! (now write some real specs)" do
      get blades_path
      expect(response).to have_http_status(200)
    end
  end
end
