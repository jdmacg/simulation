# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#   User.create([{name: jordan'}])

Property.create([{ user_id: 1, property_type: 1, in_development: false, city: "Ottawa", province: "Ontario"}])
Property.create([{ user_id: 2, property_type: 1, in_development: false, city: "Toronto", province: "Ontario"}])
Property.create([{ user_id: 3, property_type: 1, in_development: false, city: "Halifax", province: "Nova Scotia"}])
Property.create([{ property_type: 1, in_development: false, city: "Calgary", province: "Ontario"}])
Property.create([{ property_type: 1, in_development: false, city: "St. John's", province: "Newfoundland"}])
Property.create([{ property_type: 1, in_development: false, city: "Ottawa", province: "Ontario"}])
Property.create([{ property_type: 1, in_development: false, city: "Vancouver", province: "British Columbia"}])

Team.create([{ }])