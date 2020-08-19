# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "faker"
require "open-uri"

# file_1 = URI.open("https://res.cloudinary.com/dsszx2brq/image/upload/v1597830555/dose-juice-sTPy-oeA3h0-unsplash_uf1pul.jpg")
# file_2 = URI.open("https://res.cloudinary.com/dsszx2brq/image/upload/v1597830555/thomas-tucker-MNtag_eXMKw-unsplash_r3gk8x.jpg")
# file_3 = URI.open("https://res.cloudinary.com/dsszx2brq/image/upload/v1597830555/dan-gold-4_jhDO54BYg-unsplash_are4nk.jpg")
# file_4 = URI.open("https://res.cloudinary.com/dsszx2brq/image/upload/v1597830554/joseph-gonzalez-fdlZBWIP0aM-unsplash_b72b1c.jpg")
# file_5 = URI.open("https://res.cloudinary.com/dsszx2brq/image/upload/v1597830554/brooke-lark-08bOYnH_r_E-unsplash_kgrhle.jpg")
# file_6 = URI.open("https://res.cloudinary.com/dsszx2brq/image/upload/v1597830554/lily-banse--YHSwy6uqvk-unsplash_stknqd.jpg")
# file_7 = URI.open("https://res.cloudinary.com/dsszx2brq/image/upload/v1597830553/eiliv-sonas-aceron-ZuIDLSz3XLg-unsplash_bgpxxp.jpg")
# file_8 = URI.open("https://res.cloudinary.com/dsszx2brq/image/upload/v1597829469/zdnty8c3nfcc9sh8dwdvae56zb3t.jpg")
# pictures = [file_1, file_2, file_3, file_4, file_5, file_6, file_7, file_8]

file = URI.open("https://source.unsplash.com/collection/251966")

puts "Deleting old seeds"
Booking.destroy_all
Offer.destroy_all
User.destroy_all

puts "Start seeding"
10.times do
  my_user = User.new(email: Faker::Internet.email, 
                    password: "123456",
                    first_name: Faker::Name.first_name,
                    last_name: Faker::Name.last_name,
                    address: Faker::Address.city,
                    phone_number: Faker::PhoneNumber.cell_phone
                  )
  my_user.save!

  my_offer = Offer.new(title: Faker::Food.dish, 
    price: rand(10..30), 
    category: Offer::CATEGORIES.sample(), 
    description: "miam c'est bon", 
    date: "2020/05/16"
  )
  my_offer.photo.attach(io: file, filename: "picture.png", content_type: "image/png")
  my_offer.user = my_user
  my_offer.save!
end
puts "Seeding done"

