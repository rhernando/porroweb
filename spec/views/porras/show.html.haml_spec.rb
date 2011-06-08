require 'spec_helper'

describe "porras/show.html.haml" do
  before(:each) do
    @porra = assign(:porra, stub_model(Porra,
      :titulo => "Titulo",
      :importe => 1.5,
      :inscripcion_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Titulo/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1.5/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
