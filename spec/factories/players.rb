FactoryGirl.define do
  factory :player do
    name { Faker::Name.name }
    gender { Random.boolean }
    birthday { Random.date(1000) }
  end
end