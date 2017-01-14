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
	my_property = Property.create!([{property_type: my_type[0], in_development: false, city: Faker::University.name, province: Faker::Vehicle.manufacture, value: Faker::Number.decimal(2), poster_image_url: "https://www.google.ca/imgres?imgurl=https%3A%2F%2Fstatic1.squarespace.com%2Fstatic%2F56392e22e4b06f9cf23dc33e%2Ft%2F566a46f1e0327c71c29669c3%2F1449805554360%2Fproperty-connect-home.jpg%3Fformat%3D2500w&imgrefurl=http%3A%2F%2Fpropertyconnect.com%2F&docid=K6O_WmKHPSHKXM&tbnid=kRvboT9ulm_iuM%3A&vet=1&w=1600&h=1067&bih=703&biw=1280&q=property&ved=0ahUKEwiOpIDsqcLRAhVH8mMKHViiDD8QMwgyKAEwAQ&iact=mrc&uact=8"}])
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
