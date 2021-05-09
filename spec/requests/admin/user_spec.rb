require 'rails_helper'

RSpec.describe "Admin::Users", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/admin/user/index"
      expect(response).to have_http_status(:success)
    end
  end

end
