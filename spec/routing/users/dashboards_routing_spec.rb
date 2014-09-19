require "rails_helper"

RSpec.describe Users::DashboardsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/users/dashboards").to route_to("users/dashboards#index")
    end

    it "routes to #new" do
      expect(:get => "/users/dashboards/new").to route_to("users/dashboards#new")
    end

    it "routes to #show" do
      expect(:get => "/users/dashboards/1").to route_to("users/dashboards#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/users/dashboards/1/edit").to route_to("users/dashboards#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/users/dashboards").to route_to("users/dashboards#create")
    end

    it "routes to #update" do
      expect(:put => "/users/dashboards/1").to route_to("users/dashboards#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/users/dashboards/1").to route_to("users/dashboards#destroy", :id => "1")
    end

  end
end
