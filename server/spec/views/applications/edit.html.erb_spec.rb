require 'spec_helper'

describe "config/people/edit" do
  before(:each) do
    @config_person = assign(:config_person, stub_model(Application,
      :covering_letter => "MyString",
      :portfolio => "MyString",
      :assessment => "MyText",
      :future_consideration => false,
      :skills_and_keywords => "MyText"
    ))
  end

  it "renders the edit config_person form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", config_person_path(@config_person), "post" do
      assert_select "input#config_person_covering_letter[name=?]", "config_person[covering_letter]"
      assert_select "input#config_person_portfolio[name=?]", "config_person[portfolio]"
      assert_select "textarea#config_person_assessment[name=?]", "config_person[assessment]"
      assert_select "input#config_person_future_consideration[name=?]", "config_person[future_consideration]"
      assert_select "textarea#config_person_skills_and_keywords[name=?]", "config_person[skills_and_keywords]"
    end
  end
end
