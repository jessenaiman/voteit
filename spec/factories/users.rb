# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    provider "twitter"
    email "jessenaiman@gmail.com"
    uid "12345"
    name "Bob"
  end
end
