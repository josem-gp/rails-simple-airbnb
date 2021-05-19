# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Destroying the database..."

Flat.destroy_all

puts "Adding flats..."
10.times do
  flat = Flat.new(
    name: Faker::FunnyName.name,
    address: Faker::Address.street_name,
    description: Faker::Company.catch_phrase,
    price_per_night: rand(50..100),
    number_of_guests: rand(1..5)
  )
  flat.save!
  puts "Saved #{flat.name}"
end
puts "Done!"
