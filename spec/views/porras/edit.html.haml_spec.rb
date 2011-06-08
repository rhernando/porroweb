require 'spec_helper'

describe "porras/edit.html.haml" do
  before(:each) do
    @porra = assign(:porra, stub_model(Porra,
      :titulo => "MyString",
      :importe => 1.5,
      :inscripcion_id => 1
    ))
  end

  it "renders the edit porra form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => porras_path(@porra), :method => "post" do
      assert_select "input#porra_titulo", :name => "porra[titulo]"
      assert_select "input#porra_importe", :name => "porra[importe]"
      assert_select "input#porra_inscripcion_id", :name => "porra[inscripcion_id]"
    end
  end
end
