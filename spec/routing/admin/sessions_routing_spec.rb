require "rails_helper"

RSpec.describe Admin::SessionsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/admin/sessions").to route_to("admin/sessions#index")
    end

    it "routes to #new" do
      expect(:get => "/admin/sessions/new").to route_to("admin/sessions#new")
    end

    it "routes to #show" do
      expect(:get => "/admin/sessions/1").to route_to("admin/sessions#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/admin/sessions/1/edit").to route_to("admin/sessions#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/admin/sessions").to route_to("admin/sessions#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/admin/sessions/1").to route_to("admin/sessions#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/admin/sessions/1").to route_to("admin/sessions#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/admin/sessions/1").to route_to("admin/sessions#destroy", :id => "1")
    end
  end
end
