# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Deleting old seeds"
User.destroy_all
Offer.destroy_all
Booking.destroy_all

puts "Start seeding"
my_user = User.new(email: "toto@toto.com", password: "123456")
my_user.save!

my_offer = Offer.new(title: "Dîner de l'espace", price: 30.20, category: "chinese", description: "miam c'est bon", date: "2020/05/16")
my_offer.user = my_user 
my_offer.save!
puts "Seeding done" 