require 'spec_helper'

describe "noticia/edit.html.haml" do
  before(:each) do
    @noticium = assign(:noticium, stub_model(Noticium,
      :texto => "MyText",
      :titulo => "MyString"
    ))
  end

  it "renders the edit noticium form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => noticia_path(@noticium), :method => "post" do
      assert_select "textarea#noticium_texto", :name => "noticium[texto]"
      assert_select "input#noticium_titulo", :name => "noticium[titulo]"
    end
  end
end
