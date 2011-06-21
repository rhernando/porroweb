require "spec_helper"

describe InscripcionesController do
  describe "routing" do

    it "routes to #index" do
      get("/inscripciones").should route_to("inscripciones#index")
    end

    it "routes to #new" do
      get("/inscripciones/new").should route_to("inscripciones#new")
    end

    it "routes to #show" do
      get("/inscripciones/1").should route_to("inscripciones#show", :id => "1")
    end

    it "routes to #edit" do
      get("/inscripciones/1/edit").should route_to("inscripciones#edit", :id => "1")
    end

    it "routes to #create" do
      post("/inscripciones").should route_to("inscripciones#create")
    end

    it "routes to #update" do
      put("/inscripciones/1").should route_to("inscripciones#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/inscripciones/1").should route_to("inscripciones#destroy", :id => "1")
    end

  end
end
