require "rails_helper"

RSpec.describe Clients::SettingsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/clients/settings").to route_to("clients/settings#index")
    end

    it "routes to #new" do
      expect(:get => "/clients/settings/new").to route_to("clients/settings#new")
    end

    it "routes to #show" do
      expect(:get => "/clients/settings/1").to route_to("clients/settings#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/clients/settings/1/edit").to route_to("clients/settings#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/clients/settings").to route_to("clients/settings#create")
    end

    it "routes to #update" do
      expect(:put => "/clients/settings/1").to route_to("clients/settings#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/clients/settings/1").to route_to("clients/settings#destroy", :id => "1")
    end

  end
end
