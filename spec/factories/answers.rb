# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :answer do
    association :question
    sequence(:name) { |i| "Answer#{i}" }
  end
end
