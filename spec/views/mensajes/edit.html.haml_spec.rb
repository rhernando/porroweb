require 'spec_helper'

describe "mensajes/edit.html.haml" do
  before(:each) do
    @mensaje = assign(:mensaje, stub_model(Mensaje,
      :usuario_id => 1,
      :texto => "MyText"
    ))
  end

  it "renders the edit mensaje form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => mensajes_path(@mensaje), :method => "post" do
      assert_select "input#mensaje_usuario_id", :name => "mensaje[usuario_id]"
      assert_select "textarea#mensaje_texto", :name => "mensaje[texto]"
    end
  end
end
