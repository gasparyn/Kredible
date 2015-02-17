require 'faker'

FactoryGirl.define do
  factory :property do |f|
    f.address { Faker::Address.street_address }
    f.description { Faker::Lorem.paragraph }
    f.price { Faker::Commerce.price } 
  end
end
