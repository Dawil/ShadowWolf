require 'spec_helper'

describe "applicants/new" do
  before(:each) do
    assign(:applicant, stub_model(Applicant).as_new_record)
  end

  it "renders new applicant form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", applicants_path, "post" do
    end
  end
end
