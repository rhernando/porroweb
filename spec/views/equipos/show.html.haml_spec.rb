require 'spec_helper'

describe "equipos/show.html.haml" do
  before(:each) do
    @equipo = assign(:equipo, stub_model(Equipo,
      :nombre => "Nombre",
      :tipo => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nombre/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
