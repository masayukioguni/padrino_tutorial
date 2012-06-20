FactoryGirl.define do
  factory :post do
    sequence(:title) {|n| "title_#{n}" }
    sequence(:body) {|n| "body_#{n}" }
  end
end