# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :group do
    title "MyString"
    hashtag "MyString"
    description "MyText"
    privacy "MyString"
    association :user
  end
end
