require "faker"

FactoryGirl.define do

  factory :hotel do
    title       Faker::Name.title
    breakfast_included true 
    room_description Faker::Lorem.paragraph
    star_rating 3
    price_for_room 100
 
  end
end