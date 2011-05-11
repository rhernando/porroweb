require 'spec_helper'

describe "noticia/index.html.haml" do
  before(:each) do
    assign(:noticia, [
      stub_model(Noticium,
        :texto => "MyText",
        :titulo => "Titulo"
      ),
      stub_model(Noticium,
        :texto => "MyText",
        :titulo => "Titulo"
      )
    ])
  end

  it "renders a list of noticia" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Titulo".to_s, :count => 2
  end
end
