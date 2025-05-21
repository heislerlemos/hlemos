require 'rails_helper'

RSpec.describe "Whois", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/whois/index"
      expect(response).to have_http_status(:success)
    end
  end

end
