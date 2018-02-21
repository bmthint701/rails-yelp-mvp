# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first

category = %w[chinese italian japanese french belgian]
10.times do
  Restaurant.create(name:Faker::Zelda.character, address: Faker::Address.city, phone_number: Faker::PhoneNumber.phone_number, category: category.sample)
end

all_restaurants = Restaurant.all
50.times do
  all_restaurants.sample.reviews << Review.new(content: Faker::RickAndMorty.quote, rating: rand(0..5))
end
