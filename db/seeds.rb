# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
puts "creating Cocktails"
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
i = Ingredient.create(name: "mint leaves")

c = Cocktail.create(name: "Wisky coca")

d = Dose.create(description: "5cl", cocktail_id: c.id, ingredient_id: i.id)

puts "I finished !"
