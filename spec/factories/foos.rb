require 'faker'

FactoryGirl.define do
  factory :foo do
    name { Faker::Company.name }
    city { Faker::Address.city }
    website { Faker::Internet.url }
    state
  end
end
