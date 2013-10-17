require 'spec_helper'

describe "dietaries/index" do
  before(:each) do
    assign(:dietaries, [
      stub_model(Dietary,
        :requirements => "MyText"
      ),
      stub_model(Dietary,
        :requirements => "MyText"
      )
    ])
  end

  it "renders a list of dietaries" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
