require 'rails_helper'

RSpec.describe "Requests", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/request/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/request/new"
      expect(response).to have_http_status(:success)
    end
  end

end
