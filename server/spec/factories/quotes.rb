# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :quote do
    quote { Faker::Lorem.paragraphs.join('<br>') }
    date { (0..20).to_a.sample.years.ago + (1..345).to_a.sample.days }
    citation { Faker::Name.name  }
  end
end
