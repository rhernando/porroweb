require "spec_helper"

describe NoticiaController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/noticia" }.should route_to(:controller => "noticia", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/noticia/new" }.should route_to(:controller => "noticia", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/noticia/1" }.should route_to(:controller => "noticia", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/noticia/1/edit" }.should route_to(:controller => "noticia", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/noticia" }.should route_to(:controller => "noticia", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/noticia/1" }.should route_to(:controller => "noticia", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/noticia/1" }.should route_to(:controller => "noticia", :action => "destroy", :id => "1")
    end

  end
end
