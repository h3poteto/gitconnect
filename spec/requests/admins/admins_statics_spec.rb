require 'rails_helper'

RSpec.describe "Admins::Statics", :type => :request do
  describe "GET /admins_statics" do
    it "works! (now write some real specs)" do
      get admins_statics_path
      expect(response).to have_http_status(200)
    end
  end
end
