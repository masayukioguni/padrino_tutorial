FactoryGirl.define do
  factory :author do
    sequence(:name) {|n| "author_#{n}" }
    sequence(:name_kana) {|n| "author_kana_#{n}" }
  end
end
