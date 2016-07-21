require "rails_helper"

RSpec.describe OtherStuffsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/other_stuffs").to route_to("other_stuffs#index")
    end

    it "routes to #new" do
      expect(:get => "/other_stuffs/new").to route_to("other_stuffs#new")
    end

    it "routes to #show" do
      expect(:get => "/other_stuffs/1").to route_to("other_stuffs#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/other_stuffs/1/edit").to route_to("other_stuffs#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/other_stuffs").to route_to("other_stuffs#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/other_stuffs/1").to route_to("other_stuffs#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/other_stuffs/1").to route_to("other_stuffs#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/other_stuffs/1").to route_to("other_stuffs#destroy", :id => "1")
    end

  end
end
