FactoryGirl.define do
  factory :user do
    sequence(:id) { |n| "#{n}" }
    name 'Default User'
    sequence(:email) { |n| "user#{n}@example.com" }
    password 'password'
    password_confirmation 'password'
  end
end
