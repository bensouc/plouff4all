# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "destroying current data"
User.destroy_all
SwimmingPool.destroy_all
Booking.destroy_all

puts "creating user"
owner_test = User.create!(email: 'owner@eami.com', password: 'secret', first_name: 'fn_owner',last_name:  'popo',birth_date:  '27/05/1980',bio: 'cerncmnercreipuibniernficpnn',
  role: 'owner',address: 'nantes',phone_number: '0604584584')

renter_test = User.create!(email: 'renter@eami.com', password: 'secret', first_name: 'fn_user',last_name:  'popo',birth_date:  '27/05/1980',bio: 'cerncmnercreipuibniernficpnn',
  role: 'renter',address: 'nantes',phone_number: '0604584584')


  puts "create swmming pools"
pool_test = SwimmingPool.create!(
  name: 'plouf1',
  description: 'c froid',
  address: 'nantes',
  length: '12',
  width: '12',
  max_depth: '3',
  price_per_day: '500',
  treatment: 'natural',
  temperature: '25',
  max_people: '152',
  kids_friendly: true,
  pets_friendly: 'false',
  user_id: owner_test.id,
)
pool_test.photo.attach(io: File.open(Rails.root.join('app/assets/images/pool.jpg')),
                  filename: 'pool.jpg')

pool_test2 = SwimmingPool.create!(
  name: 'plouf2',
  description: 'c chaud',
  address: 'nantes',
  length: '12',
  width: '12',
  max_depth: '3',
  price_per_day: '500',
  treatment: 'natural',
  temperature: '25',
  max_people: '152',
  kids_friendly: false,
  pets_friendly: 'true',
  user_id: owner_test.id,
)
pool_test2.photo.attach(io: File.open(Rails.root.join('app/assets/images/moche.jpg')),
                  filename: 'moche.jpg')

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
