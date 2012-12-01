# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user_vote do
    question_id 1
    user nil
  end
end
