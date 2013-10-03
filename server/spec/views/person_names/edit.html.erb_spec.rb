require 'spec_helper'

describe "person_names/edit" do
  before(:each) do
    @person_name = assign(:person_name, stub_model(PersonName,
      :first => "MyString",
      :last => "MyString",
      :preferred_first => "MyString",
      :preferred_last => "MyString"
    ))
  end

  it "renders the edit person_name form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", person_name_path(@person_name), "post" do
      assert_select "input#person_name_first[name=?]", "person_name[first]"
      assert_select "input#person_name_last[name=?]", "person_name[last]"
      assert_select "input#person_name_preferred_first[name=?]", "person_name[preferred_first]"
      assert_select "input#person_name_preferred_last[name=?]", "person_name[preferred_last]"
    end
  end
end