FactoryGirl.define do
  factory :championship do
    name { Faker::Name.name }
    date { Random.date(1000) }
  end
end