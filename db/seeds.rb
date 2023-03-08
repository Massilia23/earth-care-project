# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'
Mission.destroy_all
User.destroy_all
user1 = User.create!(email: "amel@gmail.com", password: "azerty", first_name: "amel", last_name: "amelou")

puts "mission created"
20.times do |i|
  Mission.create!(
    title: Faker::Book.title,
    description: Faker::Hipster.paragraph(sentence_count: 5),
    location: Faker::Address.city + ', France',
    start_date: Faker::Date.between(from: '2022-01-01', to: '2022-12-31'),
    end_date: Faker::Date.between(from: '2023-01-01', to: '2023-12-31'),
    start_time: Faker::Time.between(from: DateTime.now, to: DateTime.now + 1, format: :short),
    duration: Faker::Number.between(from: 1, to: 5).to_s + ' hours',
    dess_code: Faker::Job.field,
    reward: Faker::Number.between(from: 20, to: 60),
    rating: Faker::Number.between(from: 1, to: 5),
    completed: Faker::Boolean.boolean,
    personal_choice: Faker::Boolean.boolean,
    user: user1,
    photo_url: Faker::LoremFlickr.image(size: "300x200", search_terms: ['nature', i])
  )
end
puts "finished !"
