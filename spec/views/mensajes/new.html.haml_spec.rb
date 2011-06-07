require 'spec_helper'

describe "mensajes/new.html.haml" do
  before(:each) do
    assign(:mensaje, stub_model(Mensaje,
      :usuario_id => 1,
      :texto => "MyText"
    ).as_new_record)
  end

  it "renders new mensaje form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => mensajes_path, :method => "post" do
      assert_select "input#mensaje_usuario_id", :name => "mensaje[usuario_id]"
      assert_select "textarea#mensaje_texto", :name => "mensaje[texto]"
    end
  end
end
