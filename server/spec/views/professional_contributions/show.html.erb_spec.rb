require 'spec_helper'

describe "professional_contributions/show" do
  before(:each) do
    @professional_contribution = assign(:professional_contribution, stub_model(ProfessionalContribution,
      :activity => "Activity",
      :description => "MyText",
      :url => "Url"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Activity/)
    rendered.should match(/MyText/)
    rendered.should match(/Url/)
  end
end
