require "rails_helper"

RSpec.describe DelrequestsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/delrequests").to route_to("delrequests#index")
    end

    it "routes to #new" do
      expect(:get => "/delrequests/new").to route_to("delrequests#new")
    end

    it "routes to #show" do
      expect(:get => "/delrequests/1").to route_to("delrequests#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/delrequests/1/edit").to route_to("delrequests#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/delrequests").to route_to("delrequests#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/delrequests/1").to route_to("delrequests#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/delrequests/1").to route_to("delrequests#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/delrequests/1").to route_to("delrequests#destroy", :id => "1")
    end

  end
end
