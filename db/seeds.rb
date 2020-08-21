# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "faker"
require "open-uri"

puts "Deleting old seeds"
Booking.destroy_all
Offer.destroy_all
User.destroy_all

puts "Start seeding"

# 8.times do
#   my_user = User.new(email: Faker::Internet.email, 
#                     password: "123456",
#                     first_name: Faker::Name.first_name,
#                     last_name: Faker::Name.last_name,
#                     address: Faker::Address.city,
#                     phone_number: Faker::PhoneNumber.cell_phone
#                   )
#   my_user.save!

#   my_offer = Offer.new(title: Faker::Food.dish, 
#     price: rand(10..30), 
#     category: Offer::CATEGORIES.sample(), 
#     description: "miam c'est bon", 
#     date: "2020/05/16"
#   )
#   # my_offer.photo.attach(io: pictures.sample, filename: "picture.png", content_type: "image/jpeg")
#   my_offer.user = my_user
#   my_offer.save!
# end

puts "Creating Host 1 and his offer(s)"
my_user = User.new(email: "arthur.gasquet@gmail.com", 
                      password: "123456",
                      first_name: "Arthur",
                      last_name: "Gasquet",
                      address: "avenue de France 84, Lausanne",
                      phone_number: "076 394 23 98"
                    )
    my_user.save!  
my_offer = Offer.new(title: "Pizza party chez Madlyn & Arthur !", 
  price: 8, 
  category: Offer::CATEGORIES[1], 
  description: "Viens goûter nos délicieuses pizzas fait maison! \
    L'idée est de faire un 'stand-up dinner' avec une dizaine de personnes, \
    autour d'une bonne pizza à partager.",
  date: "2020/08/22"
)
file = URI.open("https://res.cloudinary.com/dsszx2brq/image/upload/v1598011623/ivan-torres-MQUqbmszGGM-unsplash_a6atnl.jpg")
my_offer.photo.attach(io: file, filename: "picture.png", content_type: "image/jpeg")
my_offer.user = my_user
my_offer.save! 

puts "Creating Host 2 and his offer(s)"
my_user = User.new(email: "charles.monfils@gmail.com", 
                      password: "123456",
                      first_name: "Charles",
                      last_name: "Monfils",
                      address: "boulevard de grancy 6, Lausanne",
                      phone_number: "079 346 56 92"
                    )
    my_user.save!  
my_offer = Offer.new(title: "Soirée cheese & wine", 
  price: 12, 
  category: Offer::CATEGORIES[0], 
  description: "Bordelais venant tout juste d'arriver à Lausanne \
    je souhaiterais rencontrer de nouvelles personnes. Je vous propose une soirée cheese & wine \
    avec des spécialités de la région girondine et quelques bouteilles bien de chez nous!",
  date: "2020/08/22"
)
file = URI.open("https://res.cloudinary.com/dsszx2brq/image/upload/v1598012333/lana-abie-De3-PUfrO5Q-unsplash_nmd7sj.jpg")
my_offer.photo.attach(io: file, filename: "picture.png", content_type: "image/jpeg")
my_offer.user = my_user
my_offer.save! 

puts "Creating Host 3 and his offer(s)"
my_user = User.new(email: "edouard.lloris@gmail.com", 
                      password: "123456",
                      first_name: "Edouard",
                      last_name: "Lloris",
                      address: "rue des bains 34, Genève",
                      phone_number: "078 937 45 91"
                    )
    my_user.save!  
my_offer = Offer.new(title: "Repas gastronomique, spécialités lyonnaises", 
  price: 20, 
  category: Offer::CATEGORIES[0], 
  description: "Ancien chef dans un restaurant étoilé dans le vieux Lyon \
    je propose aujourd'hui mes plats chez moi, dans une ambiance plus conviviale et chaleureuse. \
    Venez goûter mon tablier de sapeur, le saucission brioché fait maison ou encore ma quenelle lyonnaise!",
  date: "2020/08/22"
)
file = URI.open("https://res.cloudinary.com/dsszx2brq/image/upload/v1598012819/alex-munsell-Yr4n8O_3UPc-unsplash_ffm6s0.jpg")
my_offer.photo.attach(io: file, filename: "picture.png", content_type: "image/jpeg")
my_offer.user = my_user
my_offer.save! 

puts "Creating Host 4 and his offer(s)"
my_user = User.new(email: "pablo.cifuentes@gmail.com", 
                      password: "123456",
                      first_name: "Pablo",
                      last_name: "Cifuentes",
                      address: "rue gourgas 12, Genève",
                      phone_number: "079 832 83 12"
                    )
    my_user.save!  
my_offer = Offer.new(title: "Paella valenciana", 
  price: 13, 
  category: Offer::CATEGORIES[6], 
  description: "Hola! Je viens de Valence et je vis en Suisse depuis 3 ans. \
    J'adore faire goûter les spécialités de mon pays. Qu'est-ce que tu en dis de venir pour une paella à la valencienne? \
    Viens passer une soirée chez moi, comme si tu étais en vacances en Espagne!",
  date: "2020/08/23"
)
file = URI.open("https://res.cloudinary.com/dsszx2brq/image/upload/v1598013302/kaitlin-dowis-VjM2t7VH9Uo-unsplash_meonrg.jpg")
my_offer.photo.attach(io: file, filename: "picture.png", content_type: "image/jpeg")
my_offer.user = my_user
my_offer.save! 

puts "Creating Host 5 and his offer(s)"
my_user = User.new(email: "natsu.tomimoto@gmail.com", 
                      password: "123456",
                      first_name: "Natsu",
                      last_name: "Tomimoto",
                      address: "rue du Grütli 3, Genève",
                      phone_number: "078 833 23 98"
                    )
    my_user.save!  
my_offer = Offer.new(title: "Sushi like you never tasted them before!", 
  price: 25, 
  category: Offer::CATEGORIES[2], 
  description: "Hi everyone! My name is Natsu and I come from Japan. Unfortunately, I don't speak french, \
    but I would be very happy to invite you at my place and make you some real japanese sushi! \
    Taste the real taste of Japan!",
  date: "2020/08/22"
)
file = URI.open("https://res.cloudinary.com/dsszx2brq/image/upload/v1598013623/jose-ruales-F7lk3ju2ifQ-unsplash_ksbkjm.jpg")
my_offer.photo.attach(io: file, filename: "picture.png", content_type: "image/jpeg")
my_offer.user = my_user
my_offer.save!

puts "Creating Host 6 and his offer(s)"
my_user = User.new(email: "carlota.aguilar@gmail.com", 
                      password: "123456",
                      first_name: "Carlota",
                      last_name: "Aguilar",
                      address: "rue des étuves 5, Genève",
                      phone_number: "076 313 45 92"
                    )
    my_user.save!  
my_offer = Offer.new(title: "Asado argentino", 
  price: 15, 
  category: Offer::CATEGORIES[7], 
  description: "Buenos dias! Nous sommes Carlota & Javi, un couple d'Argentins! Nous vivons dans \
  dans une grande maison avec jardin au milieu de Genève, et nous adorons organiser des 'asados', \
  les barbecues typiques argentins. Viens passer un moment avec nous et boire un maté!",
  date: "2020/08/23"
)
file = URI.open("https://res.cloudinary.com/dsszx2brq/image/upload/v1598014017/jose-ignacio-pompe-XY-V_o-ykuk-unsplash_nmppwu.jpg")
my_offer.photo.attach(io: file, filename: "picture.png", content_type: "image/jpeg")
my_offer.user = my_user
my_offer.save!

puts "Creating Host 7 and his offer(s)"
my_user = User.new(email: "juliette.gayet@gmail.com", 
                      password: "123456",
                      first_name: "Juliette",
                      last_name: "Gayet",
                      address: "rue des bains 22, Genève",
                      phone_number: "076 112 78 34"
                    )
    my_user.save!  
my_offer = Offer.new(title: "Bouillabaisse, pétanque petit Ricard!", 
  price: 18, 
  category: Offer::CATEGORIES[0], 
  description: "Tout juste arrivée de Marseille, je viens de commencer mon Master en lettres à l'Université de Genève. \
  Viens partager un moment ensoleillé (on l'espère!) avec une bonne bouillabaisse du sud! \
  A la suite du programme, petit tournoi de pétanque dans le parc juste en bas de chez moi \
  accompagné d'un petit Ricard comme il se doit!",
  date: "2020/08/23"
)
file = URI.open("https://res.cloudinary.com/dsszx2brq/image/upload/v1598014806/clement-griffet-yxGykPHmTmQ-unsplash_qilvar.jpg")
my_offer.photo.attach(io: file, filename: "picture.png", content_type: "image/jpeg")
my_offer.user = my_user
my_offer.save!

puts "Creating Host 8 and his offer(s)"
my_user = User.new(email: "urbain.sissokho@gmail.com", 
                      password: "123456",
                      first_name: "Urbain",
                      last_name: "Sissokho",
                      address: "rue rodo 3, Genève",
                      phone_number: "076 124 28 54"
                    )
    my_user.save!  
my_offer = Offer.new(title: "Poulet yassa sénégalais!", 
  price: 14, 
  category: Offer::CATEGORIES[7], 
  description: "Bonjour à tous, je m'appelle Urbain et je viens du Sénégal! \
  J'aimerais vous inviter chez moi pour vous faire goûter une spécialité sénégalaise, le poulet yassa. \
  J'espère vous voir nombreux pour partager un bon moment tous ensemble! ",
  date: "2020/08/22"
)
file = URI.open("https://res.cloudinary.com/dsszx2brq/image/upload/v1598015127/louis-hansel-shotsoflouis-k2ZCm7LCj8E-unsplash_1_ekxi3y.jpg")
my_offer.photo.attach(io: file, filename: "picture.png", content_type: "image/jpeg")
my_offer.user = my_user
my_offer.save!

puts "Creating Host 9 and his offer(s)"
my_user = User.new(email: "louis.muller@gmail.com", 
                      password: "123456",
                      first_name: "Louis",
                      last_name: "Müller",
                      address: "avenue de france 2, Lausanne",
                      phone_number: "078 167 32 87"
                    )
    my_user.save!  
my_offer = Offer.new(title: "Fondue valaisanne!", 
  price: 14, 
  category: Offer::CATEGORIES[8], 
  description: "Salut! Ma copine Valentine et moi-même t'invitons à une petite fondue sympa chez nous!\
  Une vraie, avec du bon fromage valaisan et du fendant! C'est l'été? Et alors! Il n'y a pas de saison pour la fondue!",
  date: "2020/08/22"
)
file = URI.open("https://res.cloudinary.com/dsszx2brq/image/upload/v1598016159/angela-pham-vo7GGTh6sXM-unsplash_1_ywqsgq.jpg")
my_offer.photo.attach(io: file, filename: "picture.png", content_type: "image/jpeg")
my_offer.user = my_user
my_offer.save!

puts "Seeding done"

