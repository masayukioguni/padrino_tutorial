FactoryGirl.define do
  factory :post do
    title { Faker::Name.name }
    body { Faker::Name.name }
    sequence(:account_id)
  end
end