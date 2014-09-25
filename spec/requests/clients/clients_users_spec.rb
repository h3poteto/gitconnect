require 'rails_helper'

RSpec.describe "Clients::Users", :type => :request do
  describe "GET /clients_users" do
    it "works! (now write some real specs)" do
      get clients_users_path
      expect(response).to have_http_status(200)
    end
  end
end
