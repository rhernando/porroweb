require 'spec_helper'

describe "noticia/show.html.haml" do
  before(:each) do
    @noticium = assign(:noticium, stub_model(Noticium,
      :texto => "MyText",
      :titulo => "Titulo"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Titulo/)
  end
end
