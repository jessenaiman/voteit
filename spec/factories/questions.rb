# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :question do
    name "MyString"
    vote_type "MyString"
    flag false
    association :group
    association :user
  end
end
