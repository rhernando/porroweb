require 'spec_helper'

describe "noticia/_new.html.haml" do
  before(:each) do
    assign(:noticium, stub_model(Noticium,
      :texto => "MyText",
      :titulo => "MyString"
    ).as_new_record)
  end

  it "renders new noticium form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => noticia_path, :method => "post" do
      assert_select "textarea#noticium_texto", :name => "noticium[texto]"
      assert_select "input#noticium_titulo", :name => "noticium[titulo]"
    end
  end
end
