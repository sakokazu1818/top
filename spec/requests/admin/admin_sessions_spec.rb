require 'rails_helper'

RSpec.describe "Admin::Sessions", type: :request do
  describe "GET /admin_sessions" do
    it "works! (now write some real specs)" do
      get admin_sessions_path
      expect(response).to have_http_status(200)
    end
  end
end
