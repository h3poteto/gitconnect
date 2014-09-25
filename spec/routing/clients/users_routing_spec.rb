require "rails_helper"

RSpec.describe Clients::UsersController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/clients/users").to route_to("clients/users#index")
    end

    it "routes to #new" do
      expect(:get => "/clients/users/new").to route_to("clients/users#new")
    end

    it "routes to #show" do
      expect(:get => "/clients/users/1").to route_to("clients/users#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/clients/users/1/edit").to route_to("clients/users#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/clients/users").to route_to("clients/users#create")
    end

    it "routes to #update" do
      expect(:put => "/clients/users/1").to route_to("clients/users#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/clients/users/1").to route_to("clients/users#destroy", :id => "1")
    end

  end
end
