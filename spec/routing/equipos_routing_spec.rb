require "spec_helper"

describe EquiposController do
  describe "routing" do

    it "routes to #index" do
      get("/equipos").should route_to("equipos#index")
    end

    it "routes to #new" do
      get("/equipos/new").should route_to("equipos#new")
    end

    it "routes to #show" do
      get("/equipos/1").should route_to("equipos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/equipos/1/edit").should route_to("equipos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/equipos").should route_to("equipos#create")
    end

    it "routes to #update" do
      put("/equipos/1").should route_to("equipos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/equipos/1").should route_to("equipos#destroy", :id => "1")
    end

  end
end
