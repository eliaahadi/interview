# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# seeds:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# places
# places = Place.create(
#   title:'White House',
#   address: '1600 Pennsylvania Avenue NW Washington DC 20500', 
#   latitude: '38.8', 
#   longitude: '-77.0'
# )

# places = Place.create(
#   title:'Test1',
#   address: '', 
#   latitude: '61.582195', 
#   longitude: '-149.443512'
# ) 

place_list = [
  [ "Test5", '', '35.109937', '-89.959983'],
  [ "Test4", '', '45.787839', '-108.502110'],
  [ "Test3", '','25.891297', '-97.393349'],
  [ "Test2", '', '44.775211', '-68.774184'],
  [ "Test1", '', '61.582195', '-149.443512']
]

place_list.each do |title, address, latitude, longitude|
  Place.create( title: title, address: address, latitude: latitude, longitude: longitude )
end