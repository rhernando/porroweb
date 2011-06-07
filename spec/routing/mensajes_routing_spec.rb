require "spec_helper"

describe MensajesController do
  describe "routing" do

    it "routes to #index" do
      get("/mensajes").should route_to("mensajes#index")
    end

    it "routes to #new" do
      get("/mensajes/new").should route_to("mensajes#new")
    end

    it "routes to #show" do
      get("/mensajes/1").should route_to("mensajes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/mensajes/1/edit").should route_to("mensajes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/mensajes").should route_to("mensajes#create")
    end

    it "routes to #update" do
      put("/mensajes/1").should route_to("mensajes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/mensajes/1").should route_to("mensajes#destroy", :id => "1")
    end

  end
end
