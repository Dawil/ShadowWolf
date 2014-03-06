require 'spec_helper'

describe "config/projects/show" do
  before(:each) do
    @config_project = assign(:config_project, stub_model(Certification,
      :name => "Name",
      :ranking => "Ranking",
      :awarding_body => "Awarding Body"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Ranking/)
    rendered.should match(/Awarding Body/)
  end
end
