# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'
require "open-uri"

Voucher.destroy_all
Booking.destroy_all
DeclinedBooking.destroy_all
Chatroom.destroy_all
Mission.destroy_all
User.destroy_all

user1 = User.create!(email: "amel@gmail.com", password: "azerty", first_name: "Amel", last_name: "Zahir")
user1_file = URI.open("https://res.cloudinary.com/dcjjlgguj/image/upload/v1678795627/122739028_mcyvpe.jpg")
# user1.photo.attach(io: user1_file, filename: "user1.jpg", content_type: "image/jpg")
user1.save!
user2 = User.create!(email: "najib@gmail.com", password: "azerty", first_name: "Najib", last_name: "Zahir")
user2_file = URI.open("https://res.cloudinary.com/dcjjlgguj/image/upload/v1678795781/119122764_aakao8.jpg")
# user2.photo.attach(io: user2_file, filename: "user2.jpg", content_type: "image/jpg")
user2.save!
user3 = User.create!(email: "yannis@gmail.com", password: "azerty", first_name: "Yannis", last_name: "Zahir")
user3_file = URI.open("https://res.cloudinary.com/dcjjlgguj/image/upload/v1678795720/105856055_aen7ji.jpg")
# user3.photo.attach(io: user3_file, filename: "user3.jpg", content_type: "image/jpg")
user3.save!
user4 = User.create!(email: "lila@gmail.com", password: "azerty", first_name: "Lila", last_name: "Zahir")
user4_file = URI.open("https://res.cloudinary.com/dcjjlgguj/image/upload/v1678795820/g4axleppi0jphmkxitou_neiwfh.jpg")
# user4.photo.attach(io: user4_file, filename: "user4.jpg", content_type: "image/jpg")
user4.save!
user5 = User.create!(email: "farid@gmail.com", password: "azerty", first_name: "Farid", last_name: "Zahir")
user5_file = URI.open("https://res.cloudinary.com/dcjjlgguj/image/upload/v1678799482/vgqoqi2xh9dynulom8sz_ym643e.jpg")
# user5.photo.attach(io: user5_file, filename: "user5.jpg", content_type: "image/jpg")
user5.save!
user6 = User.create!(first_name: "Ahmad", last_name: "Ali", email: "ahmadali@example.com", password: "password")
user6_file = URI.open("https://res.cloudinary.com/dcjjlgguj/image/upload/v1678795884/122787104_gswbao.jpg")
# user6.photo.attach(io: user6_file, filename: "user6.jpg", content_type: "image/jpg")
user6.save!
user7 = User.create!(first_name: "Fatima", last_name: "Ali", email: "fatimaali@example.com", password: "password")
user7_file = URI.open("https://res.cloudinary.com/dcjjlgguj/image/upload/v1678795907/107549303_e7e9br.jpg")
# user7.photo.attach(io: user7_file, filename: "user7.jpg", content_type: "image/jpg")
user7.save!
user8 = User.create!(first_name: "Yusuf", last_name: "Ali", email: "yusufali@example.com", password: "password")
user8_file = URI.open("https://res.cloudinary.com/dcjjlgguj/image/upload/v1678795926/m4ogwtgpsto8e1s8uwtl_yaiup4.jpg")
# user8.photo.attach(io: user8_file, filename: "user8.jpg", content_type: "image/jpg")
user8.save!
user9 = User.create!(first_name: "Aisha", last_name: "Ali", email: "aishaali@example.com", password: "password")
user9_file = URI.open("https://res.cloudinary.com/dcjjlgguj/image/upload/v1678795966/113301850_ajlxfj.jpg")
# user9.photo.attach(io: user9_file, filename: "user9.jpg", content_type: "image/jpg")
user9.save!
user10 = User.create!(first_name: "Mohammed", last_name: "Ali", email: "mohammedali@example.com", password: "password")
user10_file = URI.open("https://res.cloudinary.com/dcjjlgguj/image/upload/v1678795993/111004630_xnn9xz.jpg")
# user9.photo.attach(io: user10_file, filename: "user10.jpg", content_type: "image/jpg")
user10.save!

puts "mission created"


# Seed 1
mission1 = Mission.create!(
  title: "Cleaning the Calanques",
  description: "Join us for a day of cleaning the Calanques, one of Marseille's most beautiful natural areas. We'll be picking up litter and debris to help keep this stunning location pristine for future generations. Please wear sturdy shoes and bring a hat and sunscreen.",
  start_date: Date.tomorrow,
  end_date: Date.tomorrow + 4.days,
  duration: "8:00",
  location: "Bouches-du-Rhone",
  reward: rand(20..100),
  start_time: Time.parse("08:00"),
  rating: rand(1..5),
  user: user1,
  photo_url: "https://images.unsplash.com/photo-1604948559069-3287d5c5a6e5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8Y2FsYW5xdWVzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=1000&q=60",
  address: "Calanques de Marseille, Luminy, Marseille 13008"
)
charoom1= Chatroom.create!( mission_id: mission1.id)


# Seed 2
Mission.create(
  title: "Beach Cleanup",
  description: "Come help us clean up the beach at Plage du Prado in Marseille. We'll be picking up trash and debris to help protect marine life and keep the beach beautiful. Wear comfortable clothes and shoes that can get wet, and bring a refillable water bottle.",
  start_date: Date.tomorrow + 1.day,
  end_date: Date.tomorrow + 5.days,
  duration: Time.parse("7:30"),
  location: "Bouches-du-Rhone",
  reward: rand(20..100),
  start_time: Time.parse("09:30"),
  rating: rand(1..5),
  user: user2,
  photo_url: "https://images.unsplash.com/photo-1610093674388-cee0337f2684?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8YmVhY2glMjBjbGVhbmluZ3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=1000&q=60",
  address: "Plage du Prado, Marseille 13008"
)

# Seed 3
Mission.create(
  title: "Planting Trees in the City",
  description: "Join us for a morning of tree planting in the city of Aix-en-Provence. We'll be planting saplings in a local park to help combat climate change and create a greener environment. Please wear sturdy shoes and bring gloves if you have them.",
  start_date: Date.tomorrow + 2.days,
  end_date: Date.tomorrow + 6.days,
  duration: Time.parse("4:00"),
  location: "Bouches-du-Rhone",
  reward: rand(20..100),
  start_time: Time.parse("10:00"),
  rating: rand(1..5),
  user: user3,
  photo_url: "https://images.unsplash.com/photo-1513086670993-297187d3a281?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fHBsYW50aW5nJTIwdHJlZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=600&q=60",
  address: "1 Av. Jules Ferry, 13100 Aix-en-Provence
  "
)

# 4
Mission.create(
  title: "Community Garden Planting in the 5th Arrondissement",
  description: "Join us for an afternoon of planting in the community garden in the 5th arrondissement. We'll be planting a variety of fruits and vegetables to help support the local community and promote sustainable living. Please wear comfortable clothes and bring a hat and sunscreen.",
  start_date: Date.tomorrow + 3.days,
  end_date: Date.tomorrow + 7.days,
  duration: Time.parse("3:00"),
  location: "Ile-de-France",
  reward: rand(20..100),
  start_time: Time.parse("13:00"),
  rating: rand(1..5),
  user: user2,
  photo_url: "https://images.unsplash.com/photo-1622383563227-04401ab4e5ea?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fGdhcmRlbiUyMHBsYW50aW5nfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=1000&q=60",
  address: "7 Rue Mouffetard, Paris 75005"
)

# Seed 5
Mission.create(
  title: "Trail Maintenance in Calanques National Park",
  description: "Join us for a day of trail maintenance in the Calanques National Park. We'll be repairing and clearing the trails to help protect this beautiful park and ensure that it can be enjoyed by future generations. Please wear sturdy shoes and bring a hat and sunscreen.",
  start_date: Date.tomorrow + 4.days,
  end_date: Date.tomorrow + 8.days,
  duration: Time.parse("7:00"),
  location: "Bouches-du-Rhone",
  reward: rand(20..100),
  start_time: Time.parse("08:00"),
  rating: rand(1..5),
  user: user1,
  photo_url: "https://images.unsplash.com/photo-1651303812964-44676108f8d8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80",
  address: "Calanques National Park, Marseille 13008"
)

# Seed 6
Mission.create(
  title: "Beach Cleanup at Pointe Rouge",
  description: "Come help us clean up the beach at Pointe Rouge in Marseille. We'll be picking up trash and debris to help protect marine life and keep the beach beautiful. Wear comfortable clothes and shoes that can get wet, and bring a refillable water bottle.",
  start_date: Date.tomorrow + 5.days,
  end_date: Date.tomorrow + 9.days,
  duration: Time.parse("5:30"),
  location: "Bouches-du-Rhone",
  reward: rand(20..100),
  start_time: Time.parse("09:30"),
  rating: rand(1..5),
  user: user2,
  photo_url: "https://images.unsplash.com/photo-1563245159-f793f19d8c37?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fGJlYWNoJTIwY2xlYW51cHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=1000&q=60",
  address: "Plage de la Pointe Rouge, Marseille 13008"
)

# Seed 7
Mission.create(
  title: "Cleaning up the City Center",
  description: "Join us for a morning of cleaning up the city center in Aix-en-Provence. We'll be picking up litter and debris to help keep the streets clean and beautiful. Please wear comfortable shoes and bring gloves if you have them.",
  start_date: Date.tomorrow + 6.days,
  end_date: Date.tomorrow + 10.days,
  duration: Time.parse("4:00"),
  location: "Bouches-du-Rhone",
  reward: rand(20..100),
  start_time: Time.parse("10:00"),
  rating: rand(1..5),
  user: user3,
  photo_url: "https://images.unsplash.com/photo-1624971035514-2bbbc81ea9fe?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8Y2xlYW51cHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=1000&q=60",
  address: "300 avenue Giuseppe Verdi 13100, Aix-en-Provence"
)

# Seed 8
  Mission.create(
    title: "Beach Cleanup at Plage des Catalans",
    description: "Join us for a morning of cleaning up the beach at Plage des Catalans. We'll be picking up litter and debris to help protect marine life and keep the beach beautiful. Please wear comfortable clothes and shoes that can get wet, and bring a refillable water bottle.",
    start_date: Date.tomorrow + 7.days,
    end_date: Date.tomorrow + 11.days,
    duration: Time.parse("5:00"),
    location: "Bouches-du-Rhone",
    reward: rand(20..100),
    start_time: Time.parse("10:00"),
    rating: rand(1..5),
    user: user3,
    photo_url: "https://images.unsplash.com/photo-1569254983547-44dc559f038f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fGJlYWNoJTIwY2xlYW51cHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=1000&q=60",
    address: "Plage des Catalans, Marseille"
  )

# Seed 9
Mission.create(
  title: "River Cleanup in the Parc de Sceaux",
  description: "Help us clean up the banks of the river in Parc de Sceaux. We'll be picking up trash and debris to help protect the local ecosystem and ensure the river stays healthy. Wear comfortable clothes and shoes that can get wet, and bring a refillable water bottle.",
  start_date: Date.tomorrow + 8.days,
  end_date: Date.tomorrow + 12.days,
  duration: Time.parse("5:30"),
  location: "Ile-de-France",
  reward: rand(20..100),
  start_time: Time.parse("14:00"),
  rating: rand(1..5),
  user: user4,
  photo_url: "https://images.unsplash.com/photo-1672760128983-2a30b9d4af10?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8cGFyYyUyMGRlJTIwc2NlYXV4fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=1000&q=60",
  address: "Parc de Sceaux, Paris"
)

# Seed 10
Mission.create(
  title: "Trail Maintenance in the Montagne Sainte-Victoire",
  description: "Join us for a day of trail maintenance in the Montagne Sainte-Victoire. We'll be repairing and clearing the trails to help protect this beautiful mountain and ensure that it can be enjoyed by future generations. Please wear sturdy shoes and bring a hat and sunscreen.",
  start_date: Date.tomorrow + 9.days,
  end_date: Date.tomorrow + 13.days,
  duration: Time.parse("7:00"),
  location: "Bouches-du-Rhone",
  reward: rand(20..100),
  start_time: Time.parse("08:00"),
  rating: rand(1..5),
  user: user1,
  photo_url: "https://images.unsplash.com/photo-1541623089466-8e777dd05d70?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjJ8fHNhaW50ZSUyMHZpY3RvaXJlJTIwbW91bnRhaW58ZW58MHx8MHx8&auto=format&fit=crop&w=1000&q=60",
  address: "Montagne Sainte-Victoire, Aix-en-Provence"
)

# Seed 11
Mission.create(
  title: "Beach Cleanup at Plage de la Corniche",
  description: "Come help us clean up the beach at Plage de la Corniche in Marseille. We'll be picking up trash and debris to help protect marine life and keep the beach beautiful. Wear comfortable clothes and shoes that can get wet, and bring a refillable water bottle.",
  start_date: Date.tomorrow + 10.days,
  end_date: Date.tomorrow + 14.days,
  duration: Time.parse("5:30"),
  location: "Bouches-du-Rhone",
  reward: rand(20..100),
  start_time: Time.parse("09:30"),
  rating: rand(1..5),
  user: user2,
  photo_url: "https://images.unsplash.com/photo-1566840601924-07789e0ad0b0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8Y29ybmljaGUlMjBtYXJzZWlsbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=1000&q=60",
  address: "Plage de la Corniche, Marseille"
)

# Seed 12
Mission.create(
  title: "Cleaning up the Park in Aix-en-Provence",
  description: "Join us for a morning of cleaning up the park in Aix-en-Provence. We'll be picking up litter and debris to help keep the park clean and beautiful. Please wear comfortable shoes and bring gloves if you have them.",
  start_date: Date.tomorrow + 11.days,
  end_date: Date.tomorrow + 15.days,
  duration: Time.parse("4:00"),
  location: "Bouches-du-Rhone",
  reward: rand(20..100),
  start_time: Time.parse("10:00"),
  rating: rand(1..5),
  user: user5,
  photo_url: "https://images.unsplash.com/photo-1580600301354-0ce8faef576c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8amFyZGlufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=1000&q=60",
  address: "Parc Jourdan, Aix-en-Provence"
)
# Seed 13
Mission.create(
  title: "Eco-Friendly Fashion Show in Marseille",
  description: "Join us for an evening of fashion and sustainability in Marseille. We'll be showcasing the latest eco-friendly fashion designs and discussing ways to reduce waste in the fashion industry. Please dress to impress in your favorite sustainable outfit!",
  start_date: Date.tomorrow + 20.days,
  end_date: Date.tomorrow + 21.days,
  duration: Time.parse("2:00"),
  location: "Bouches-du-Rhone",
  reward: rand(20..100),
  start_time: Time.parse("19:00"),
  rating: rand(1..5),
  user: user1,
  photo_url: "https://images.unsplash.com/photo-1539109136881-3be0616acf4b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8ZmFzaGlvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=600&q=60",
  address: "Palais des Congrès, Marseille"
)

# Seed 14
Mission.create(
  title: "Tree Planting in the Parc de la Tête d'Or",
  description: "Join us for a morning of tree planting in the Parc de la Tête d'Or in Lyon. We'll be planting a variety of trees to help support the local ecosystem and combat climate change. Please wear comfortable clothes and shoes that can get dirty, and bring gloves if you have them.",
  start_date: Date.tomorrow + 25.days,
  end_date: Date.tomorrow + 28.days,
  duration: Time.parse("4:00"),
  location: "Rhône",
  reward: rand(20..100),
  start_time: Time.parse("9:00"),
  rating: rand(1..5),
  user: user4,
  photo_url: "https://images.unsplash.com/photo-1598335624134-5bceb5de202d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGxhbnRpbmclMjB0cmVlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60",
  address: "Parc de la Tête d'Or, Lyon"
)

# Seed 15
Mission.create(
  title: "Urban Garden Cleanup in Aix-en-Provence",
  description: "Join us for a morning of cleaning up the urban garden in Aix-en-Provence. We'll be weeding, pruning, and planting to help promote sustainable urban agriculture. Please wear comfortable clothes and bring gardening gloves if you have them.",
  start_date: Date.tomorrow + 30.days,
  end_date: Date.tomorrow + 34.days,
  duration: Time.parse("3:00"),
  location: "Bouches-du-Rhone",
  reward: rand(20..100),
  start_time: Time.parse("10:00"),
  rating: rand(1..5),
  user: user5,
  photo_url: "https://images.unsplash.com/photo-1486814758653-7e3f452bdddb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mjd8fHVyYmFuJTIwZ2FyZGVufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60",
  address: "Jardin des Plantes, Aix-en-Provence"
)

Mission.create(
  title: "Environmental awareness workshop",
  description: "Join us for a morning workshop the with young children, share your experiment and answer questions",
  start_date: Date.tomorrow + 30.days,
  end_date: Date.tomorrow + 34.days,
  duration: Time.parse("3:00"),
  location: "Bouches-du-Rhone",
  reward: rand(20..100),
  start_time: Time.parse("10:00"),
  rating: rand(1..5),
  user: user5,
  photo_url: "https://images.unsplash.com/photo-1529390079861-591de354faf5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjZ8fHRlYWNoaW5nfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60",
  address: "21 Rue Haxo, Marseille 13001"
)

puts "finished !"
