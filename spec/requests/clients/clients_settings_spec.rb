require 'rails_helper'

RSpec.describe "Clients::Settings", :type => :request do
  describe "GET /clients_settings" do
    it "works! (now write some real specs)" do
      get clients_settings_path
      expect(response).to have_http_status(200)
    end
  end
end
