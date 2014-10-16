# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


restaurant = Restaurant.create(name: "Bolo", street_address: "138 East 92nd Street",
      street_address_2: "", state: "NY", zip_code: "10128", phone: "212-348-9179",
      website: "www.resy.com")
