require 'rails_helper'

RSpec.describe "Users::Dashboards", :type => :request do
  describe "GET /users_dashboards" do
    it "works! (now write some real specs)" do
      get users_dashboards_path
      expect(response).to have_http_status(200)
    end
  end
end
