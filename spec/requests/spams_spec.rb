require 'rails_helper'

RSpec.describe "Spams", type: :request do
  describe "GET /spams" do
    it "works! (now write some real specs)" do
      get spams_path
      expect(response).to have_http_status(200)
    end
  end
end
