require 'rails_helper'

RSpec.describe "Binarys", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/binarys/index"
      expect(response).to have_http_status(:success)
    end
  end

end
