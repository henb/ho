admin = User.new(
    email:      "admin@gmail.com",
    password:              "11111111",
    password_confirmation: "11111111")
admin.role = "admin"
admin.save  

#create users and hotels
5.times do
  user = User.new(
    email:      Faker::Internet.safe_email,
    password:              "11111111",
    password_confirmation: "11111111")

  if user.save  
    3.times do
      adress = "#{Faker::Address.city}, #{Faker::Address.street_address}, #{Faker::Address.secondary_address}"
      hotel = Hotel.new(
            title:       Faker::Name.title,
            breakfast_included: rand(2).zero? ,
            room_description: Faker::Lorem.paragraph,
            address: adress,
            star_rating:rand(8),
            price_for_room: rand(1000))
      hotel.save
    end
    
    hotels = Hotel.all
    3.times do
      hotel = hotels.sample
      comment = hotel.comments.new(user:user)
      comment.description = Faker::Lorem.paragraph
      comment.save
    end

  end

end