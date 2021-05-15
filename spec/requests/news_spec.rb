require 'rails_helper'

RSpec.describe "News", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/news/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/news/show"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /edit" do
    it "returns http success" do
      get "/news/edit"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/news/new"
      expect(response).to have_http_status(:success)
    end
  end

end
