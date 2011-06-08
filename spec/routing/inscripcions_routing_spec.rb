require "spec_helper"

describe InscripcionsController do
  describe "routing" do

    it "routes to #index" do
      get("/inscripcions").should route_to("inscripcions#index")
    end

    it "routes to #new" do
      get("/inscripcions/new").should route_to("inscripcions#new")
    end

    it "routes to #show" do
      get("/inscripcions/1").should route_to("inscripcions#show", :id => "1")
    end

    it "routes to #edit" do
      get("/inscripcions/1/edit").should route_to("inscripcions#edit", :id => "1")
    end

    it "routes to #create" do
      post("/inscripcions").should route_to("inscripcions#create")
    end

    it "routes to #update" do
      put("/inscripcions/1").should route_to("inscripcions#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/inscripcions/1").should route_to("inscripcions#destroy", :id => "1")
    end

  end
end
