FactoryGirl.define do
  sequence(:email) { |n| "user#{n}@example.com" }

  factory :user do
    email
    password "123454321"
    first_name "User"
    last_name "Example"
    admin false
  end

  factory :admin, parent: :user do
    id
    admin true
  end
end
