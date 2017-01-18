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

Property.all.each do |prop|
	development = Development.create!([{cost: 500, used: false, value: 1000, development_time: 2}])
	my_development = development[0]
	prop.development = my_development
	my_development.property = prop
	prop.save!
	my_development.save!
end


6.times do |i|
  user = User.new
	user.username = Faker::Name.unique.name
	user.password = 'valid_password'
	user.password_confirmation = 'valid_password'
	user.team_id = i+1
	user.save!
end

Incentive.create([{description: "4 Industrial Properties Owned", value: 5000000, incentive_type: 1, calculation_key: "propertyType1Count", completed_key: "propertyType1"}])
Incentive.create([{description: "7 Multi-Residential Properties Owned", value: 4000000, incentive_type: 1, calculation_key: "propertyType2Count", completed_key: "propertyType1"}])
Incentive.create([{description: "3 Office Properties Owned", value: 6000000, incentive_type: 1, calculation_key: "propertyType3Count", completed_key: "propertyType1"}])
Incentive.create([{description: "7 Retail Properties Owned", value: 5000000, incentive_type: 1, calculation_key: "propertyType4Count", completed_key: "propertyType1"}])
Incentive.create([{description: "4 Properties owned in Alberta", value: 6000000, incentive_type: 1, calculation_key: "province1Count", completed_key: "province1"}])
Incentive.create([{description: "4 Properties owned in British Columia", value: 4500000, incentive_type: 1, calculation_key: "province2Count", completed_key: "province2"}])
Incentive.create([{description: "3 Properties owned in Nova Scotia", value: 8000000, incentive_type: 1, calculation_key: "province3Count", completed_key: "province3"}])
Incentive.create([{description: "3 Properties owned in Ontario", value: 5000000, incentive_type: 1, calculation_key: "province4Count", completed_key: "province4"}])
Incentive.create([{description: "3 Properties owned in Quebec", value: 3500000, incentive_type: 1, calculation_key: "province5Count", completed_key: "province5"}])
Incentive.create([{description: "2 Properties owned in Saskatchewan", value: 7000000, incentive_type: 1, calculation_key: "province6Count", completed_key: "province6"}])
Incentive.create([{description: "10 Acquisitions Completed", value: 5000000, incentive_type: 1, calculation_key: "tradedPropertiesCount", completed_key: "traded1"}])
Incentive.create([{description: "20 Acquisitions Completed", value: 15000000, incentive_type: 1, calculation_key: "tradedPropertiesCount", completed_key: "traded2"}])
Incentive.create([{description: "30 Acquisitions Completed", value: 25000000, incentive_type: 1, calculation_key: "tradedPropertiesCount", completed_key: "traded3"}])
Incentive.create([{description: "2 Developments Completed", value: 10000000, incentive_type: 1, calculation_key: "developmentsCount", completed_key: "developments1"}])
Incentive.create([{description: "5 Developments Completed", value: 15000000, incentive_type: 1, calculation_key: "developmentsCount", completed_key: "developments2"}])
Incentive.create([{description: "8 Developments Completed", value: 20000000, incentive_type: 1, calculation_key: "developmentsCount", completed_key: "developments3"}])
Incentive.create([{description: "Lowest Cash Balance", value: 4000000, incentive_type: 2}])
Incentive.create([{description: "Highest Property Value", value: 6000000, incentive_type: 2}])
Incentive.create([{description: "Most Acquisitions", value: 7000000, incentive_type: 2}])
Incentive.create([{description: "Most Developments", value: 5000000, incentive_type: 2}])
Incentive.create([{description: "Most Properties Owned", value: 4000000, incentive_type: 2}])
Incentive.create([{description: "Most Industrial Properties Owned", value: 3000000, incentive_type: 2}])
Incentive.create([{description: "Most Multi-Residential Properties Owned", value: 3000000, incentive_type: 2}])
Incentive.create([{description: "Most Office Properties Owned", value: 3000000, incentive_type: 2}])
Incentive.create([{description: "Most Retial Properties Owned", value: 3000000, incentive_type: 2}])
