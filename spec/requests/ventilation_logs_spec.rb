require 'rails_helper'

RSpec.describe "VentilationLogs", type: :request do
  describe "GET /ventilation_logs" do
    it "works! (now write some real specs)" do
      get ventilation_logs_path
      expect(response).to have_http_status(200)
    end
  end
end
