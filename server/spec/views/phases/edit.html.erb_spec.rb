require 'spec_helper'

describe "config/projects/edit" do
  before(:each) do
    @config_project = assign(:config_project, stub_model(Phase,
      :project_name => "MyString",
      :studio => "MyString",
      :client => "MyString",
      :services_scope => "MyText",
      :delivery_contract => "MyText",
      :staff_contact_login => "MyString",
      :staff_custodian_login => "MyString"
    ))
  end

  it "renders the edit config_project form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", config_project_path(@config_project), "post" do
      assert_select "input#config_project_project_name[name=?]", "config_project[project_name]"
      assert_select "input#config_project_studio[name=?]", "config_project[studio]"
      assert_select "input#config_project_client[name=?]", "config_project[client]"
      assert_select "textarea#config_project_services_scope[name=?]", "config_project[services_scope]"
      assert_select "textarea#config_project_delivery_contract[name=?]", "config_project[delivery_contract]"
      assert_select "input#config_project_staff_contact_login[name=?]", "config_project[staff_contact_login]"
      assert_select "input#config_project_staff_custodian_login[name=?]", "config_project[staff_custodian_login]"
    end
  end
end