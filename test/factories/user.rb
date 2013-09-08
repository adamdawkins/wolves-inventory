require 'factory_girl'

FactoryGirl.define do
  factory :user do
    first_name "james"
    last_name  "montague"
    username   "jmontague"
    password   "password"
    password_confirmation   "password"
  end
end
