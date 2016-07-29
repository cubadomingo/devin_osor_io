FactoryGirl.define do
  factory :comment do
    name "Test Comment"
    body "That was a cool post man!"
    post
  end
end
