# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

puts "destroying current data"
User.destroy_all
SwimmingPool.destroy_all
Booking.destroy_all





puts "creating user"
owner_test = User.create!(email: 'owner@eami.com', password: 'secret', first_name: 'Laurent', last_name:  'Plouff', birth_date:  '27/05/1980',bio: 'cerncmnercreipuibniernficpnn',
  role: 'owner',address: 'nantes',phone_number: '0604584584')

  file = URI.open('https://res.cloudinary.com/bensoucdev/image/upload/v1637829103/maclead_ndqreh.jpg')
owner_test.photo.attach(io: file, filename: 'maclead_ndqreh.jpg', content_type: 'image/jpg')

owner_test2 = User.create!(email: 'bensouc@gmail.com', password: 'secret', first_name: 'Ben',last_name:  'Souc',birth_date:  '27/05/1980',bio: 'cerncmnercreipuibniernficpnn',
  role: 'owner',address: '47 rue des freres amieux nantes',phone_number: '0604584584')

file = URI.open('https://res.cloudinary.com/bensoucdev/image/upload/v1637794731/ID_BMO_vrefar.jpg')
owner_test2.photo.attach(io: file, filename: 'ID_BMO_vrefar.jpg', content_type: 'image/jpg')


renter_test = User.create!(email: 'renter@eami.com', password: 'secret', first_name: 'Hélène',last_name:  'Lemoine',birth_date:  '27/05/1980',bio: 'cerncmnercreipuibniernficpnn',
  role: 'renter',address: 'nantes',phone_number: '0604584584')


  puts "create swimming pools"
pool_test = SwimmingPool.create!(
  name: 'Corléone Pistoche',
  description: 'Superbe piscine à déversement, avec vue sur la Méditerranée.
                Un contour en bois exotique et un jardin fleuri enchantera vos moments autour de notre piscine. ',
  address: '1170-1196 Av. du Revestel, 13260 Cassis, france',
  length: '20',
  width: '12',
  max_depth: '2',
  price_per_day: '500',
  treatment: 'natural',
  temperature: '25',
  max_people: '10',
  kids_friendly: true,
  pets_friendly: 'false',
  user_id: owner_test.id,
)
pool_test.photo.attach(io: File.open(Rails.root.join('app/assets/images/pool.jpg')),
                  filename: 'pool.jpg')

pool_test2 = SwimmingPool.create!(
  name: 'Une très belle piscine',
  description: 'Piscine rectangulaire 8x4m, chauffée.
 Pour partager des moments inoubliables entre amis ou en famille. Animaux non admis',
  address: "94-102 Bd de l'Égalité, 44100 Nantes, france",
  length: '8',
  width: '4',
  max_depth: '2',
  price_per_day: '500',
  treatment: 'natural',
  temperature: '25',
  max_people: '152',
  kids_friendly: true,
  pets_friendly: 'false',
  user_id: owner_test.id
)
file = URI.open('http://galeriephotos.desjoyaux.fr/_data/i/upload/2015/06/29/20150629105203-05465bf1-la.jpg')
pool_test2.photo.attach(io: file, filename: '20150629105203-05465bf1-la.jpg', content_type: 'image/jpg')

pool_test3 = SwimmingPool.create!(
  name: 'Avec vue sur mer',
  description: 'La plus belle des piscines au sein de notre propriété. Découvrez les éléments qui feront de ce moment, une expérience unique pas comme les autres, avec une piscine de luxe',
  address: '47-43 Chem. des Mauberts, 06800 Cagnes-sur-Mer, france',
  length: '20',
  width: '12',
  max_depth: '2',
  price_per_day: '300',
  treatment: 'natural',
  temperature: '25',
  max_people: '10',
  kids_friendly: true,
  pets_friendly: 'true',
  user_id: owner_test.id
)
file = URI.open('https://img.archiexpo.fr/images_ae/photo-mg/2251-16186421.jpg')
pool_test3.photo.attach(io: file, filename: '2251-16186421.jpg', content_type: 'image/jpg')

pool_test4 = SwimmingPool.create!(
  name: 'Tropical Island Paradise',
  description: "Combinez une expérience de naviagation et privatiser notre piscine de luxe",
  address: 'Rue Milton Robbins, 06300 Nice, france',
  length: '25',
  width: '20',
  max_depth: '5',
  price_per_day: '1500',
  treatment: 'natural',
  temperature: '28',
  max_people: '150',
  kids_friendly: true,
  pets_friendly: 'false',
  user_id: owner_test.id
)
file = URI.open('http://blog.piscinedunord.fr/wp-content/uploads/2012/07/tropic-island-paradise.jpg')
pool_test4.photo.attach(io: file, filename: 'tropic-island-paradise.jpg', content_type: 'image/jpg')


pool_test5 = SwimmingPool.create!(
  name: 'La piscine en bois Semi-enterrée',
  description: "Le plaisir partagé en famille, au sien d'un parc floral",
  address: '21 Rue de la Ruette, 44300 Nantes, france',
  length: '10',
  width: '5',
  max_depth: '2',
  price_per_day: '80',
  treatment: 'chlore',
  temperature: '20',
  max_people: '6',
  kids_friendly: true,
  pets_friendly: 'true',
  user_id: owner_test.id
)
file = URI.open('http://piscinedunord.fr/img/constructeur-piscine-bois-hors-sol-59-62/piscine-bois-hors-sol-semi-enterree.jpg')
pool_test5.photo.attach(io: file, filename: 'piscine-bois-hors-sol-semi-enterree.jpg', content_type: 'image/jpg')

pool_test6 = SwimmingPool.create!(
  name: 'La rivière tropicale',
  description: "Un parcourt tropical, unique au monde avec sa riviere sauvage.
  Un moment merveilleux à partager en famille ou pour tous vos évenements",
  address: '1-7 Imp. de Toulouse, 78000 Versailles, france',
  length: '150',
  width: '5',
  max_depth: '2',
  price_per_day: '2000',
  treatment: 'chlore',
  temperature: '28',
  max_people: '50',
  kids_friendly: true,
  pets_friendly: 'true',
  user_id: owner_test2.id
)
file = URI.open('https://www.droledemarmotte.ch/media/cache/watermark_only/uploads/images/une-piscine-de-reve.jpeg')
pool_test6.photo.attach(io: file, filename: 'une-piscine-de-reve.jpeg', content_type: 'image/jpg')

pool_test7 = SwimmingPool.create!(
  name: 'En plein massif central',
  description: "Vous ne serez pas déçus en découvrant cette piscine de 16,50m de long (dont 5 m dans le vide !).
  Non seulement elle est intégrée parfaitement à son environnement, avec une vue imprenable sur le lac…
  mais c’est également une prouesse technique",
  address: 'Lamartinie, 15130 Ytrac, france',
  length: '16',
  width: '5',
  max_depth: '2',
  price_per_day: '150',
  treatment: 'chlore',
  temperature: '28',
  max_people: '10',
  kids_friendly: false,
  pets_friendly: 'true',
  user_id: owner_test.id
)
file = URI.open('http://www.piscinespa.com/sites/default/files/styles/display1/public/piscine_de_france_exception.jpg?itok=YdCzmDoR&c=a258abdedf14c8366526be7b36ab8f93')
pool_test7.photo.attach(io: file, filename: 'piscine_de_france_exception.jpg', content_type: 'image/jpg')

pool_test8 = SwimmingPool.create!(
  name: 'En plein foret vierge',
  description: "Unique au Monde, la piscine à déversement en pleine foret tropicale",
  address: 'Av. Delfim Moreira, 816 - Leblon, Rio de Janeiro - RJ, 22441-000, Brésil',
  length: '16',
  width: '5',
  max_depth: '2',
  price_per_day: '150',
  treatment: 'chlore',
  temperature: '28',
  max_people: '10',
  kids_friendly: false,
  pets_friendly: 'true',
  user_id: owner_test.id
)
file = URI.open('http://galeriephotos.desjoyaux.fr/_data/i/upload/2018/07/17/20180717114126-54aefe29-la.jpg')
pool_test8.photo.attach(io: file, filename: '20180717114126-54aefe29-la.jpg', content_type: 'image/jpg')

pool_test9 = SwimmingPool.create!(
  name: 'Projet X',
  description: "A la recherche de la fiesta de votre vie? Nous avons tout prévus pour vous.
  Venez vous oubliez dans notre paradis de la TEUFFFFFF!!!",
  address: '47 rue des freres amieux, nantes, france',
  length: '25',
  width: '30',
  max_depth: '2',
  price_per_day: '1500',
  treatment: 'chlore',
  temperature: '28',
  max_people: '150',
  kids_friendly: false,
  pets_friendly: 'true',
  user_id: owner_test2.id
)
file = URI.open('https://medias.spotern.com/spots/w640/66/66473-1532336916.jpg')
pool_test9.photo.attach(io: file, filename: '66473-1532336916.jpg', content_type: 'image/jpg')


puts 'create bookings'

Booking.create!(
  user_id: renter_test.id,
  swimming_pool_id: pool_test.id,
  start_date: '27/05/2021',
  end_date: '28/05/2021',
  status: 'validated',
  total_price: ' 500'
)

Booking.create!(
  user_id: renter_test.id,
  swimming_pool_id: pool_test2.id,
  start_date: '27/05/2021',
  end_date: '28/05/2021',
  status: 'pending',
  total_price: ' 251'
)

Booking.create!(
  user_id: renter_test.id,
  swimming_pool_id: pool_test3.id,
  start_date: '27/05/2021',
  end_date: '28/05/2021',
  status: 'closed',
  total_price: ' 251'
)

Booking.create!(
  user_id: renter_test.id,
  swimming_pool_id: pool_test5.id,
  start_date: '27/05/2021',
  end_date: '28/05/2021',
  status: 'refused',
  total_price: ' 251'
)
