require 'spec_helper'

describe "inscripciones/new.html.haml" do
  before(:each) do
    assign(:inscripcion, stub_model(Inscripcion,
      :porra_id => 1,
      :usuario_id => 1,
      :pagado => false
    ).as_new_record)
  end

  it "renders new inscripcion form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => inscripcions_path, :method => "post" do
      assert_select "input#inscripcion_porra_id", :name => "inscripcion[porra_id]"
      assert_select "input#inscripcion_usuario_id", :name => "inscripcion[usuario_id]"
      assert_select "input#inscripcion_pagado", :name => "inscripcion[pagado]"
    end
  end
end
