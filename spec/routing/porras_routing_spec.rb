require "spec_helper"

describe PorrasController do
  describe "routing" do

    it "routes to #index" do
      get("/porras").should route_to("porras#index")
    end

    it "routes to #new" do
      get("/porras/new").should route_to("porras#new")
    end

    it "routes to #show" do
      get("/porras/1").should route_to("porras#show", :id => "1")
    end

    it "routes to #edit" do
      get("/porras/1/edit").should route_to("porras#edit", :id => "1")
    end

    it "routes to #create" do
      post("/porras").should route_to("porras#create")
    end

    it "routes to #update" do
      put("/porras/1").should route_to("porras#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/porras/1").should route_to("porras#destroy", :id => "1")
    end

  end
end
