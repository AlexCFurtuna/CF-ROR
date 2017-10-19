FactoryGirl.define do
  factory :user do
    email "anna@ferguson.com"
    password "12344321"
    first_name "Anna"
    last_name "Ferguson"
    admin false
  end
end
