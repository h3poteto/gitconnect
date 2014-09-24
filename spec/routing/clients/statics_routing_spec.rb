require "rails_helper"

RSpec.describe Clients::StaticsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/clients/statics").to route_to("clients/statics#index")
    end

    it "routes to #new" do
      expect(:get => "/clients/statics/new").to route_to("clients/statics#new")
    end

    it "routes to #show" do
      expect(:get => "/clients/statics/1").to route_to("clients/statics#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/clients/statics/1/edit").to route_to("clients/statics#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/clients/statics").to route_to("clients/statics#create")
    end

    it "routes to #update" do
      expect(:put => "/clients/statics/1").to route_to("clients/statics#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/clients/statics/1").to route_to("clients/statics#destroy", :id => "1")
    end

  end
end
