require 'spec_helper'

describe "Mensajes" do
  describe "GET /mensajes" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get mensajes_path
      response.status.should be(200)
    end
  end
end
