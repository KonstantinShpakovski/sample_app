FactoryGirl.define do
  factory :user do
    #name     "Michael Hartl"
    #email    "michael@example.com"
    sequence(:name)  { |n| "Person #{n}" }
    sequence(:email) { |n| "person_#{n}@example.com"}
    password "123456"
    password_confirmation "123456"

    factory :admin do
      admin true
    end

  end
end