FactoryGirl.define do
  factory :user do
    name "Dan"
    sequence(:email) { |n| "email#{n}@example.com" }
    password "pw"
  end
end
