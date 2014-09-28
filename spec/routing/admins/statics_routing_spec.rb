require "rails_helper"

RSpec.describe Admins::StaticsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/admins/statics").to route_to("admins/statics#index")
    end

    it "routes to #new" do
      expect(:get => "/admins/statics/new").to route_to("admins/statics#new")
    end

    it "routes to #show" do
      expect(:get => "/admins/statics/1").to route_to("admins/statics#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/admins/statics/1/edit").to route_to("admins/statics#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/admins/statics").to route_to("admins/statics#create")
    end

    it "routes to #update" do
      expect(:put => "/admins/statics/1").to route_to("admins/statics#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/admins/statics/1").to route_to("admins/statics#destroy", :id => "1")
    end

  end
end
