# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Car.destroy_all
user1 = User.create!(
  email: "karim@lewagon.com",
  password: "123456")
user2 = User.create!(
  email: "felipe@lewagon.com",
  password: "123456")
user3 = User.create!(
  email: "bitna@lewagon.com",
  password: "123456")
user4 = User.create!(
  email: "fanny@lewagon.com",
  password: "123456")

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
  user: user1,
  photo: "https://cdn2.rcstatic.com/images/car_images/web/bmw/7_series_lrg.jpg"
  )
car2 = Car.create!(
  brand: "Mercedes-Benz",
  car_model: "C-Class",
  seats: 5,
  plate_number: "3670PYG",
  combustion: "Diesel",
  milage: 50_000,
  transmission: "automatic",
  price_per_hour: 350,
  price_per_day: 3_000,
  location: "Barcelona",
  accessories: "Air Conditionning",
  year: 2017,
  user: user2,
  photo: "https://cdn2.rcstatic.com/images/car_images/web/mercedes/c_class_lrg.jpg"
  )
car3 = Car.create!(
  brand: "Opel",
  car_model: "Cascada Cabrio",
  seats: 4,
  plate_number: "4550GYG",
  combustion: "Gas",
  milage: 40_000,
  transmission: "Manual",
  price_per_hour: 180,
  price_per_day: 2_000,
  location: "Valencia",
  accessories: "Audio / iPod input",
  year: 2017,
  user: user3,
  photo: "https://cdn2.rcstatic.com/images/car_images/new_images/opel/cascada_lrg.jpg"
  )
car4 = Car.create!(
  brand: "Fiat",
  car_model: "500",
  seats: 4,
  plate_number: "3760AYG",
  combustion: "Diesel",
  milage: 30_000,
  transmission: "automatic",
  price_per_hour: 150,
  price_per_day: 1_400,
  location: "Las Rozas",
  accessories: "CD Player",
  year: 2018,
  user: user4,
  photo: "https://cdn2.rcstatic.com/images/car_images/web/fiat/500_convertible_lrg.jpg"
  )
