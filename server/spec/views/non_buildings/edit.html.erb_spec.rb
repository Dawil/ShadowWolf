require 'spec_helper'

describe "config/projects/edit" do
  before(:each) do
    @config_project = assign(:config_project, stub_model(NonBuilding,
      :name => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit config_project form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", config_project_path(@config_project), "post" do
      assert_select "input#config_project_name[name=?]", "config_project[name]"
      assert_select "textarea#config_project_description[name=?]", "config_project[description]"
    end
  end
end
