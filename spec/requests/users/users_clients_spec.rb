require 'rails_helper'

RSpec.describe "Users::Clients", :type => :request do
  describe "GET /users_clients" do
    it "works! (now write some real specs)" do
      get users_clients_path
      expect(response).to have_http_status(200)
    end
  end
end
