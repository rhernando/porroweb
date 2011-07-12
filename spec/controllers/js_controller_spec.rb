require 'spec_helper'

describe JsController do

  describe "GET 'scriptSeleccion'" do
    it "should be successful" do
      get 'scriptSeleccion'
      response.should be_success
    end
  end

end
