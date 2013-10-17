require 'spec_helper'

describe "preferences/index" do
  before(:each) do
    assign(:preferences, [
      stub_model(Preference,
        :likes => "MyText",
        :dislikes => "MyText"
      ),
      stub_model(Preference,
        :likes => "MyText",
        :dislikes => "MyText"
      )
    ])
  end

  it "renders a list of preferences" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
