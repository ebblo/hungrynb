# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "faker"

require "faker"

puts "Deleting old seeds"
Booking.destroy_all
Offer.destroy_all
User.destroy_all

puts "Start seeding"

10.times do
  my_user = User.new(email: Faker::Internet.email, password: "123456")
  my_user.save!
  my_offer = Offer.new(title: Faker::Food.dish, 
    price: rand(10..30), 
    category: Offer::CATEGORIES.sample(), 
    description: "miam c'est bon", 
    date: "2020/05/16")
  my_offer.user = my_user
  my_offer.save!
end

puts "Seeding done"

