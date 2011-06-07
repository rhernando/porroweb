require 'spec_helper'

describe "mensajes/show.html.haml" do
  before(:each) do
    @mensaje = assign(:mensaje, stub_model(Mensaje,
      :usuario_id => 1,
      :texto => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
  end
end
