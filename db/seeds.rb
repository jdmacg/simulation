# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#   User.create([{name: jordan'}])


Team.create!([{team_name: "Team One", cash_balance: 100000}])
Team.create!([{team_name: "Team Two", cash_balance: 100000}])
Team.create!([{team_name: "Team Three", cash_balance: 100000}])
Team.create!([{team_name: "Team Four", cash_balance: 100000}])
Team.create!([{team_name: "Team Five", cash_balance: 100000}])
Team.create!([{team_name: "Team Six", cash_balance: 100000}])

6.times do |i|
	my_type = PropertyType.create!([{description: Faker::Hacker.say_something_smart}])
	my_property = Property.create!([{property_type: my_type[0], in_development: false, city: Faker::University.name, province: Faker::Vehicle.manufacture, value: Faker::Number.decimal(2)}])
	Team.all[i].properties << my_property
end

6.times do |i|
  user = User.new
	user.username = Faker::Name.unique.name
	user.password = 'valid_password'
	user.password_confirmation = 'valid_password'
	user.team_id = i+1
	user.save!
end

