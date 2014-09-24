require 'rails_helper'

RSpec.describe "Clients::Statics", :type => :request do
  describe "GET /clients_statics" do
    it "works! (now write some real specs)" do
      get clients_statics_path
      expect(response).to have_http_status(200)
    end
  end
end
