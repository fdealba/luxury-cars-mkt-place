# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Car.destroy_all
user1 = User.new
car1 = Car.create!(
  brand: "BMW",
  car_model: "7 Series",
  seats: 5,
  plate_number: "3650GYG",
  combustion: "Diesel",
  milage: 50_000,
  transmission: "automatic",
  price_per_hour: 200,
  price_per_day: 2_500,
  location: "Madrid",
  accessories: "Air Conditionning",
  year: 2017,
  user: user1
  )

