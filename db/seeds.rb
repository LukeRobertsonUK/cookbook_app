# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



MealCategory.create! name:'Breakfast'
MealCategory.create! name:'Lunch'
MealCategory.create! name:'Dinner'

Region.create! name:'French'
Region.create! name:'Italian'
Region.create! name:'Japanese'
Region.create! name:'Indian'
Region.create! name:'British'

Author.create! name:'Jamie Oliver'
Author.create! name:'Gordon Ramsey'
Author.create! name:'Luke Robertson'

IngredientCategory.create! name:'Meat'
IngredientCategory.create! name: 'Fish'
IngredientCategory.create! name: 'Poultry'
IngredientCategory.create! name: 'Vegetables'
