# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# restaurant_category = ["chinese", "italian", "japanese", "french", "belgian"]
# restaurant_list = [Faker::Company.name, Faker::Address.street_address,
#   Faker::PhoneNumber.phone_number, restaurant_category.sample]



5.times do
  Restaurant.create({
    name: Faker::Zelda.game,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: ["Chinese", "Italian", "Japanese", "French", "Belgian"].sample
    })
end

restaurants = Restaurant.all

5.times do
  restaurants.each do |restaurant|
    restaurant.reviews.create({
      content: Faker::TwinPeaks.quote,
      rating: (0..5).to_a.sample
      })
  end
end

# restaurant_list.each do |name, address, phone_number, category|
#   Restaurant.create(name: name, address: address, phone_number: phone_number,
#   category: category)
# end
