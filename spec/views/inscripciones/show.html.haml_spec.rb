require 'spec_helper'

describe "inscripciones/show.html.haml" do
  before(:each) do
    @inscripcion = assign(:inscripcion, stub_model(Inscripcion,
      :porra_id => 1,
      :usuario_id => 1,
      :pagado => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
  end
end
