require 'spec_helper'

describe "mensajes/index.html.haml" do
  before(:each) do
    assign(:mensajes, [
      stub_model(Mensaje,
        :usuario_id => 1,
        :texto => "MyText"
      ),
      stub_model(Mensaje,
        :usuario_id => 1,
        :texto => "MyText"
      )
    ])
  end

  it "renders a list of mensajes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
