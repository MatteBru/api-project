# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
l = List.create(title: 'List-O-Rama')
trello = List.create(title: 'Trello')
Task.create(name: "make list", description: "make the list", list: l)

Task.create(name: 'Do Homework', description: 'Labs 10-15', list: l)
Task.create(name: 'Buy Milk', description: 'Go to the store', list: l)
Task.create(name: "flee the country", description: "escape your demons by crossing the border into mexico (never works)", list: l)

Task.create(name: "FIX SIGN-IN", description: "users are not able to sign in", list: trello)
Task.create(name: "visit counter", description: "our visit counter is stuck at 420", list: trello)
Task.create(name: "about us page", description: "the about us page has no contact info", list: trello)
