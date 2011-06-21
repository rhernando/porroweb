require 'spec_helper'

describe "inscripciones/index.html.haml" do
  before(:each) do
    assign(:inscripcions, [
      stub_model(Inscripcion,
        :porra_id => 1,
        :usuario_id => 1,
        :pagado => false
      ),
      stub_model(Inscripcion,
        :porra_id => 1,
        :usuario_id => 1,
        :pagado => false
      )
    ])
  end

  it "renders a list of inscripciones" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
