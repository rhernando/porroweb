require 'spec_helper'

describe "equipos/new.html.haml" do
  before(:each) do
    assign(:equipo, stub_model(Equipo,
      :nombre => "MyString",
      :tipo => 1
    ).as_new_record)
  end

  it "renders new equipo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => equipos_path, :method => "post" do
      assert_select "input#equipo_nombre", :name => "equipo[nombre]"
      assert_select "input#equipo_tipo", :name => "equipo[tipo]"
    end
  end
end
