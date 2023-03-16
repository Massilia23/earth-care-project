# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'
require "open-uri"
# Message.destroy_all

Message.destroy_all
Chatroom.destroy_all
Voucher.destroy_all
Booking.destroy_all
DeclinedBooking.destroy_all
Mission.destroy_all
User.destroy_all


user1 = User.create!(email: "amel@gmail.com", password: "azerty", first_name: "Amel", last_name: "Zahir", nickname:"Amelou23")
user1_file = URI.open("https://res.cloudinary.com/dcjjlgguj/image/upload/v1678795627/122739028_mcyvpe.jpg")
user1.photo.attach(io: user1_file, filename: "user1.jpg", content_type: "image/jpg")
user1.save!

user2 = User.create!(email: "najib@gmail.com", password: "azerty", first_name: "Najib", last_name: "Zahir", nickname:"Najib11")
user2_file = URI.open("https://res.cloudinary.com/dcjjlgguj/image/upload/v1678795781/119122764_aakao8.jpg")
user2.photo.attach(io: user2_file, filename: "user2.jpg", content_type: "image/jpg")
user2.save!

user3 = User.create!(email: "yannis@gmail.com", password: "azerty", first_name: "Yannis", last_name: "Zahir", nickname:"Yannis50")
user3_file = URI.open("https://res.cloudinary.com/dcjjlgguj/image/upload/v1678795720/105856055_aen7ji.jpg")
user3.photo.attach(io: user3_file, filename: "user3.jpg", content_type: "image/jpg")
user3.save!

user4 = User.create!(email: "lila@gmail.com", password: "azerty", first_name: "Lila", last_name: "Zahir", nickname: "Lila16")
user4_file = URI.open("https://res.cloudinary.com/dcjjlgguj/image/upload/v1678795820/g4axleppi0jphmkxitou_neiwfh.jpg")
user4.photo.attach(io: user4_file, filename: "user4.jpg", content_type: "image/jpg")
user4.save!

user5 = User.create!(email: "farid@gmail.com", password: "azerty", first_name: "Farid", last_name: "Zahir", nickname:"Farid01")
user5_file = URI.open("https://res.cloudinary.com/dcjjlgguj/image/upload/v1678799482/vgqoqi2xh9dynulom8sz_ym643e.jpg")
user5.photo.attach(io: user5_file, filename: "user5.jpg", content_type: "image/jpg")
user5.save!

user6 = User.create!(first_name: "Ahmad", last_name: "Ali", email: "ahmadali@example.com", password: "password", nickname:"Ahmad17")
user6_file = URI.open("https://res.cloudinary.com/dcjjlgguj/image/upload/v1678795884/122787104_gswbao.jpg")
user6.photo.attach(io: user6_file, filename: "user6.jpg", content_type: "image/jpg")
user6.save!

user7 = User.create!(first_name: "Fatima", last_name: "Ali", email: "fatimaali@example.com", password: "password", nickname:"Fatima03")
user7_file = URI.open("https://res.cloudinary.com/dcjjlgguj/image/upload/v1678795907/107549303_e7e9br.jpg")
user7.photo.attach(io: user7_file, filename: "user7.jpg", content_type: "image/jpg")
user7.save!

user8 = User.create!(first_name: "Yusuf", last_name: "Ali", email: "yusufali@example.com", password: "password", nickname:"Yusuf04")
user8_file = URI.open("https://res.cloudinary.com/dcjjlgguj/image/upload/v1678795926/m4ogwtgpsto8e1s8uwtl_yaiup4.jpg")
user8.photo.attach(io: user8_file, filename: "user8.jpg", content_type: "image/jpg")
user8.save!

user9 = User.create!(first_name: "Aisha", last_name: "Ali", email: "aishaali@example.com", password: "password", nickname:"Aisha13")
user9_file = URI.open("https://res.cloudinary.com/dcjjlgguj/image/upload/v1678795966/113301850_ajlxfj.jpg")
user9.photo.attach(io: user9_file, filename: "user9.jpg", content_type: "image/jpg")
user9.save!

user10 = User.create!(first_name: "Mohammed", last_name: "Ali", email: "mohammedali@example.com", password: "password", nickname:"Mohammed16")
user10_file = URI.open("https://res.cloudinary.com/dcjjlgguj/image/upload/v1678795993/111004630_xnn9xz.jpg")
user10.photo.attach(io: user10_file, filename: "user10.jpg", content_type: "image/jpg")
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
  address: "Calanques de Marseille, Luminy, Marseille 13008"
)
chatroom1 = Chatroom.create!(mission_id: mission1.id)
mission1_file = URI.open("https://res.cloudinary.com/dzwtudz1z/image/upload/v1678883714/photo-1604948559069-3287d5c5a6e5_fswyic.jpg")
mission1.photo.attach(io: mission1_file, filename: "mission1.jpg", content_type: "image/jpg")
mission1.save



# Seed 2
mission2 = Mission.create(
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
  address: "Plage du Prado, Marseille 13008"
)

chatroom2 = Chatroom.create!( mission_id: mission2.id)

mission2_file = URI.open("https://res.cloudinary.com/dzwtudz1z/image/upload/v1678883714/photo-1610093674388-cee0337f2684_mymzjv.jpg")
mission2.photo.attach(io: mission2_file, filename: "mission2.jpg", content_type: "image/jpg")
mission2.save


# Seed 3
mission3 = Mission.create(
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
  address: "1 Av. Jules Ferry, 13100 Aix-en-Provence"
)

chatroom3 = Chatroom.create!(mission_id: mission3.id)
mission3_file = URI.open("https://res.cloudinary.com/dzwtudz1z/image/upload/v1678883714/photo-1513086670993-297187d3a281_zagnh4.jpg")
mission3.photo.attach(io: mission3_file, filename: "mission3.jpg", content_type: "image/jpg")
mission3.save

# 4
mission4 = Mission.create(
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
  address: "7 Rue Mouffetard, Paris 75005"
)

chatroom4 = Chatroom.create!(mission_id: mission4.id)
mission4_file = URI.open("https://res.cloudinary.com/dzwtudz1z/image/upload/v1678883714/photo-1622383563227-04401ab4e5ea_fouadq.jpg")
mission4.photo.attach(io: mission4_file, filename: "mission4.jpg", content_type: "image/jpg")
mission4.save

# Seed 5
mission5 = Mission.create(
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


chatroom5 = Chatroom.create!( mission_id: mission5.id)

mission5_file = URI.open("https://res.cloudinary.com/dzwtudz1z/image/upload/v1678883714/photo-1651303812964-44676108f8d8_n1ku8e.jpg")
mission5.photo.attach(io: mission5_file, filename: "mission5.jpg", content_type: "image/jpg")
mission5.save


# Seed 6
mission6 = Mission.create(
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
  address: "Plage de la Pointe Rouge, Marseille 13008"
)
chatroom6 = Chatroom.create!(mission_id: mission6.id)
mission6_file = URI.open("https://res.cloudinary.com/dzwtudz1z/image/upload/v1678884118/photo-1563245159-f793f19d8c37_nu6kcn.jpg")
mission6.photo.attach(io: mission6_file, filename: "mission6.jpg", content_type: "image/jpg")
mission6.save

# Seed 7
mission7 = Mission.create(
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
  address: "300 avenue Giuseppe Verdi 13100, Aix-en-Provence"
)

chatroom7 = Chatroom.create!(mission_id: mission7.id)
mission7_file = URI.open("https://res.cloudinary.com/dzwtudz1z/image/upload/v1678884118/photo-1624971035514-2bbbc81ea9fe_cmdglc.jpg")
mission7.photo.attach(io: mission7_file, filename: "mission7.jpg", content_type: "image/jpg")
mission7.save

# Seed 8
mission8 = Mission.create(
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
  address: "Plage des Catalans, Marseille"
)
chatroom8 = Chatroom.create!(mission_id: mission8.id)
mission8_file = URI.open("https://res.cloudinary.com/dzwtudz1z/image/upload/v1678884118/photo-1569254983547-44dc559f038f_m3sj7b.jpg")
mission8.photo.attach(io: mission8_file, filename: "mission8.jpg", content_type: "image/jpg")
mission8.save

# Seed 9
mission9 = Mission.create(
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
  address: "Parc de Sceaux, Paris"
)

chatroom9 = Chatroom.create!(mission_id: mission9.id)
mission9_file = URI.open("https://res.cloudinary.com/dzwtudz1z/image/upload/v1678884118/photo-1672760128983-2a30b9d4af10_myebjo.jpg")
mission9.photo.attach(io: mission9_file, filename: "mission9.jpg", content_type: "image/jpg")
mission9.save

# Seed 10
mission10 = Mission.create(
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
  address: "Montagne Sainte-Victoire, Aix-en-Provence"
)

chatroom10 = Chatroom.create!( mission_id: mission10.id)

mission10_file = URI.open("https://res.cloudinary.com/dzwtudz1z/image/upload/v1678884118/photo-1541623089466-8e777dd05d70_bgj2hm.jpg")
mission10.photo.attach(io: mission10_file, filename: "mission10.jpg", content_type: "image/jpg")
mission10.save


# Seed 11
mission11 = Mission.create(
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
  address: "Plage de la Corniche, Marseille"
)

chatroom11 = Chatroom.create!(mission_id: mission11.id)
mission11_file = URI.open("https://res.cloudinary.com/dzwtudz1z/image/upload/v1678884443/photo-1566840601924-07789e0ad0b0_ocftxj.jpg")
mission11.photo.attach(io: mission11_file, filename: "mission11.jpg", content_type: "image/jpg")
mission11.save

# Seed 12
mission12 = Mission.create(
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
  address: "Parc Jourdan, Aix-en-Provence"
)
chatroom12 = Chatroom.create!(mission_id: mission12.id)
mission12_file = URI.open("https://res.cloudinary.com/dzwtudz1z/image/upload/v1678884443/photo-1580600301354-0ce8faef576c_edvkjy.jpg")
mission12.photo.attach(io: mission12_file, filename: "mission12.jpg", content_type: "image/jpg")
mission12.save

# Seed 13
mission13 = Mission.create(
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
  address: "Palais des Congrès, Marseille"
)

chatroom13 = Chatroom.create!( mission_id: mission13.id)

mission13_file = URI.open("https://res.cloudinary.com/dzwtudz1z/image/upload/v1678884443/photo-1539109136881-3be0616acf4b_nto0gh.jpg")
mission13.photo.attach(io: mission13_file, filename: "mission13.jpg", content_type: "image/jpg")
mission13.save

# Seed 14
mission14 = Mission.create(
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
  address: "Parc de la Tête d'Or, Lyon"
)
chatroom14 = Chatroom.create!(mission_id: mission14.id)
mission14_file = URI.open("https://res.cloudinary.com/dzwtudz1z/image/upload/v1678884443/photo-1598335624134-5bceb5de202d_mukodu.jpg")
mission14.photo.attach(io: mission14_file, filename: "mission14.jpg", content_type: "image/jpg")
mission14.save

# Seed 15
mission15 = Mission.create(
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
  address: "Jardin des Plantes, Aix-en-Provence"
)
chatroom15 = Chatroom.create!(mission_id: mission15.id)
mission15_file = URI.open("https://res.cloudinary.com/dzwtudz1z/image/upload/v1678884443/photo-1486814758653-7e3f452bdddb_kgs9rg.jpg")
mission15.photo.attach(io: mission15_file, filename: "mission15.jpg", content_type: "image/jpg")
mission15.save

mission16 = Mission.create(
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

chatroom16 = Chatroom.create!(mission_id: mission16.id)
mission16_file = URI.open("https://res.cloudinary.com/dzwtudz1z/image/upload/v1678884443/photo-1529390079861-591de354faf5_ajgsqt.jpg")
mission16.photo.attach(io: mission16_file, filename: "mission16.jpg", content_type: "image/jpg")
mission16.save

puts "finished !"
