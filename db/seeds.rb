# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Flat.destroy_all

puts 'Creating flats...'

flat1 = { name: 'Beautiful house', address: 'Canada', description: 'cosy', price_per_night: 100, number_of_guests: 5 }
flat2 = { name: 'Cosy appart', address: 'Paris', description: 'cheap', price_per_night: 1000, number_of_guests: 3 }
flat3 = { name: 'Tiny house', address: 'New York', description: 'nice view', price_per_night: 250, number_of_guests: 4 }
flat4 = { name: 'Random flat', address: 'Los Angeles', description: 'funny', price_per_night: 50, number_of_guests: 1 }

[flat1, flat2, flat3, flat4].each do |attributes|
  flat = Flat.create!(attributes)
  puts "valide ? #{flat.valid?}"
  puts "Created #{flat.name}"
end
puts 'Finished!'
