# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
puts 'Deleting all restaurants...'
Restaurant.destroy_all

category = ['chinese', 'italian', 'japanese', 'french', 'belgian']
puts 'Creating 10 fake restaurants...'

10.times do
  restaurant = Restaurant.create!(
    name: Faker::Company.name,
    address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
    phone_number: Faker::PhoneNumber.cell_phone,
    category: category.sample
  )
  restaurant.save!
  puts "#{restaurant.name} #{restaurant.phone_number} got created #{category.sample} "
end
puts 'Finished!'