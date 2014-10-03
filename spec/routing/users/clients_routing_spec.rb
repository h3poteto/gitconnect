require "rails_helper"

RSpec.describe Users::ClientsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/users/clients").to route_to("users/clients#index")
    end

    it "routes to #new" do
      expect(:get => "/users/clients/new").to route_to("users/clients#new")
    end

    it "routes to #show" do
      expect(:get => "/users/clients/1").to route_to("users/clients#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/users/clients/1/edit").to route_to("users/clients#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/users/clients").to route_to("users/clients#create")
    end

    it "routes to #update" do
      expect(:put => "/users/clients/1").to route_to("users/clients#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/users/clients/1").to route_to("users/clients#destroy", :id => "1")
    end

  end
end
