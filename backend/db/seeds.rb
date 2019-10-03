# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
puts "\n------ SEEDING STARTED ------\n"
# CREATE ARTISTS
puts "creating artists..."
a1 = Artist.create(name:"Scott",age:31)
a2 = Artist.create(name:"Josh", age:21)
a3 = Artist.create(name:"Raul", age:26)

puts "creating songs..."
s1 = Song.create(name:"Elegy of EOG", date_published:"September 5, 2019", artist_id:a3.id)

puts "------ SEEDING COMPLETE ------\n"
puts ""