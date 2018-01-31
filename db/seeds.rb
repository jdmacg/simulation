# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#   User.create([{name: jordan'}])

# TODO: Add a single round entry in the database. Trade requests will belong to a round,
# TODO: the round will have many trade requests. This will itemize the trade requests by round
# TODO: (or shock). Then we can keep a trade log in the admin section.

Team.create!([{team_name: "Team One", cash_balance: 15000000}])
Team.create!([{team_name: "Team Two", cash_balance: 15000000}])
Team.create!([{team_name: "Team Three", cash_balance: 15000000}])
Team.create!([{team_name: "Team Four", cash_balance: 15000000}])
Team.create!([{team_name: "Team Five", cash_balance: 15000000}])
Team.create!([{team_name: "Team Six", cash_balance: 15000000}])
Team.create!([{team_name: "Team Seven", cash_balance: 15000000}])
Team.create!([{team_name: "Team Eight", cash_balance: 15000000}])
Team.create!([{team_name: "Team Nine", cash_balance: 15000000}])
Team.create!([{team_name: "Team Ten", cash_balance: 15000000}])

User.create!([{username: "ben.sisokin", password: "blowjob", password_confirmation: "blowjob", team_id: 1, admin: true}])
User.create!([{username: "jaron.keller", password: "qric-admin-1", password_confirmation: "qric-admin-1", team_id: 1, admin: true}])
User.create!([{username: "monica.carnicelli", password: "qric-admin-2", password_confirmation: "qric-admin-2", team_id: 1, admin: true}])


User.create!([{username: "brodie.whitla", password: "QRIC2017-1", password_confirmation: "QRIC2017-1", team_id: 1}])
User.create!([{username: "james.acres", password: "QRIC2017-1", password_confirmation: "QRIC2017-1", team_id: 1}])
User.create!([{username: "justin.elias", password: "QRIC2017-1", password_confirmation: "QRIC2017-1",team_id: 1}])
User.create!([{username: "sam.dobbin", password: "QRIC2017-1", password_confirmation: "QRIC2017-1",team_id: 1}])
User.create!([{username: "tyler.balaban", password: "QRIC2017-1", password_confirmation: "QRIC2017-1",team_id: 1}])
User.create!([{username: "brayden.lucchetta", password: "QRIC2017-1", password_confirmation: "QRIC2017-1",team_id: 1}])


User.create!([{username: "mariah.mccrank", password: "QRIC2017-2", password_confirmation: "QRIC2017-2",team_id: 2}])
User.create!([{username: "david.gouws", password: "QRIC2017-2", password_confirmation: "QRIC2017-2",team_id: 2}])
User.create!([{username: "james.boland", password: "QRIC2017-2", password_confirmation: "QRIC2017-2",team_id: 2}])
User.create!([{username: "alias.torano", password: "QRIC2017-2", password_confirmation: "QRIC2017-2",team_id: 2}])
User.create!([{username: "leonidas.tomazos", password: "QRIC2017-2", password_confirmation: "QRIC2017-2",team_id: 2}])
User.create!([{username: "kailey.beckwith", password: "QRIC2017-2", password_confirmation: "QRIC2017-2",team_id: 2}])


User.create!([{username: "meghan.northmore", password: "QRIC2017-3", password_confirmation: "QRIC2017-3",team_id: 3}])
User.create!([{username: "mackenzie.porter", password: "QRIC2017-3", password_confirmation: "QRIC2017-3",team_id: 3}])
User.create!([{username: "meghan.bayley", password: "QRIC2017-3", password_confirmation: "QRIC2017-3",team_id: 3}])
User.create!([{username: "alex.craig", password: "QRIC2017-3", password_confirmation: "QRIC2017-3",team_id: 3}])
User.create!([{username: "adam.milito", password: "QRIC2017-3", password_confirmation: "QRIC2017-3",team_id: 3}])
User.create!([{username: "shahmeer.ahmad", password: "QRIC2017-3", password_confirmation: "QRIC2017-3",team_id: 3}])


User.create!([{username: "julian.santini", password: "QRIC2017-4", password_confirmation: "QRIC2017-4",team_id: 4}])
User.create!([{username: "raza.malik", password: "QRIC2017-4", password_confirmation: "QRIC2017-4",team_id: 4}])
User.create!([{username: "philipp.summer", password: "QRIC2017-4", password_confirmation: "QRIC2017-4",team_id: 4}])
User.create!([{username: "shrut.patel", password: "QRIC2017-4", password_confirmation: "QRIC2017-4",team_id: 4}])
User.create!([{username: "patrick.neatt", password: "QRIC2017-4", password_confirmation: "QRIC2017-4",team_id: 4}])
User.create!([{username: "jack.walsh", password: "QRIC2017-4", password_confirmation: "QRIC2017-4",team_id: 4}])


User.create!([{username: "keaton.scarabelli", password: "QRIC2017-5", password_confirmation: "QRIC2017-5",team_id: 5}])
User.create!([{username: "trevor.smith", password: "QRIC2017-5", password_confirmation: "QRIC2017-5",team_id: 5}])
User.create!([{username: "qlno.daroza", password: "QRIC2017-5", password_confirmation: "QRIC2017-5",team_id: 5}])
User.create!([{username: "eric.lee", password: "QRIC2017-5", password_confirmation: "QRIC2017-5",team_id: 5}])
User.create!([{username: "joann.peachey", password: "QRIC2017-5", password_confirmation: "QRIC2017-5",team_id: 5}])

User.create!([{username: "cameron.graham", password: "QRIC2017-6", password_confirmation: "QRIC2017-6",team_id: 6}])
User.create!([{username: "ethan.sharp", password: "QRIC2017-6", password_confirmation: "QRIC2017-6",team_id: 6}])
User.create!([{username: "nicholas.ayoub", password: "QRIC2017-6", password_confirmation: "QRIC2017-6",team_id: 6}])
User.create!([{username: "kyle.tyler", password: "QRIC2017-6", password_confirmation: "QRIC2017-6",team_id: 6}])
User.create!([{username: "wyatt.huber", password: "QRIC2017-6", password_confirmation: "QRIC2017-6",team_id: 6}])
User.create!([{username: "james.allan", password: "QRIC2017-6", password_confirmation: "QRIC2017-6",team_id: 6}])


User.create!([{username: "matthew.lam", password: "QRIC2017-7", password_confirmation: "QRIC2017-7",team_id: 7}])
User.create!([{username: "andrew.gardiner", password: "QRIC2017-7", password_confirmation: "QRIC2017-7",team_id: 7}])
User.create!([{username: "ian.jonson", password: "QRIC2017-7", password_confirmation: "QRIC2017-7",team_id: 7}])
User.create!([{username: "kevin.keresztes", password: "QRIC2017-7", password_confirmation: "QRIC2017-7",team_id: 7}])
User.create!([{username: "rabiya.adhia", password: "QRIC2017-7", password_confirmation: "QRIC2017-7",team_id: 7}])
User.create!([{username: "olivier.kidd", password: "QRIC2017-7", password_confirmation: "QRIC2017-7",team_id: 7}])


User.create!([{username: "hans.shen", password: "QRIC2017-8", password_confirmation: "QRIC2017-8",team_id: 8}])
User.create!([{username: "alexis.d’souza", password: "QRIC2017-8", password_confirmation: "QRIC2017-8",team_id: 8}])
User.create!([{username: "Mackenzie.fe", password: "QRIC2017-8", password_confirmation: "QRIC2017-8",team_id: 8}])
User.create!([{username: "hetesh.seth", password: "QRIC2017-8", password_confirmation: "QRIC2017-8",team_id: 8}])
User.create!([{username: "ines.felicella", password: "QRIC2017-8", password_confirmation: "QRIC2017-8",team_id: 8}])

User.create!([{username: "amit.kumar", password: "QRIC2017-9", password_confirmation: "QRIC2017-9",team_id: 9}])
User.create!([{username: "robert.burns", password: "QRIC2017-9", password_confirmation: "QRIC2017-9",team_id: 9}])
User.create!([{username: "gregory.warkentin", password: "QRIC2017-9", password_confirmation: "QRIC2017-9",team_id: 9}])
User.create!([{username: "max.vo", password: "QRIC2017-9", password_confirmation: "QRIC2017-9",team_id: 9}])
User.create!([{username: "william.woodfine", password: "QRIC2017-9", password_confirmation: "QRIC2017-9",team_id: 9}])

User.create!([{username: "sam.morse", password: "QRIC2017-10", password_confirmation: "QRIC2017-10",team_id: 10}])
User.create!([{username: "david.worsley", password: "QRIC2017-10", password_confirmation: "QRIC2017-10",team_id: 10}])
User.create!([{username: "aj.keilty", password: "QRIC2017-10", password_confirmation: "QRIC2017-10",team_id: 10}])
User.create!([{username: "chris.vandewater", password: "QRIC2017-10", password_confirmation: "QRIC2017-10",team_id: 10}])


PropertyType.create!([{ description: "Office" }])
PropertyType.create!([{ description: "Industrial" }])
PropertyType.create!([{ description: "Multi-Res" }])
PropertyType.create!([{ description: "Retail" }])

Property.create!([{property_type_id: 1,value: 15000000,name: "The Uptown Residence.", city: "Toronto", province: "Ontario",team_id: 1, in_development: false, developed: false}])
Property.create!([{property_type_id: 1,value: 14980000,name: "Le LDV.", city: "Montreal", province: "Quebec",team_id: 2, in_development: false, developed: false}])
Property.create!([{property_type_id: 1,value: 12870000,name: "Atrie Residence.", city: "Delta", province: "British Columbia",team_id: 3, in_development: false, developed: false}])
Property.create!([{property_type_id: 1,value: 10480000,name: "Territorial Estates.", city: "North Battlford", province: "Saskatchewan",team_id: 4, in_development: false, developed: false}])
Property.create!([{property_type_id: 1,value: 15990000,name: "Absolute World South.", city: "Mississauga", province: "Ontario",team_id: 5, in_development: false, developed: false}])
Property.create!([{property_type_id: 1,value: 14880000,name: "Minto Metropole.", city: "Ottawa", province: "Ontario",team_id: 6, in_development: false, developed: false}])
Property.create!([{property_type_id: 1,value: 10000000,name: "La Renaissance Apartments.", city: "Saskatoon", province: "Saskatchewan",team_id: 7, in_development: false, developed: false}])
Property.create!([{property_type_id: 1,value: 12550000,name: "Centennial Towers.", city: "Moncton", province: "New Brunswick",team_id: 8, in_development: false, developed: false}])
Property.create!([{property_type_id: 1,value: 11330000,name: "Stars Inn and Suites.", city: "Edmonton", province: "Alberta",team_id: 9, in_development: false, developed: false}])
Property.create!([{property_type_id: 1,value: 14760000,name: "The Bowry.", city: "Ottawa", province: "Ontario",team_id: 10, in_development: false, developed: false}])

Property.create!([{property_type_id: 2,value: 5980000,name: "1 Chandler Ave.", city: "Amherst", province: "Nova Scotia",team_id: 1, in_development: false, developed: false}])
Property.create!([{property_type_id: 2,value: 9760000,name: "London Industrial.", city: "London", province: "Ontario",team_id: 2, in_development: false, developed: false}])
Property.create!([{property_type_id: 2,value: 6578000,name: "211 Hutchings Street.", city: "Winnipeg", province: "Manitoba",team_id: 3, in_development: false, developed: false}])
Property.create!([{property_type_id: 2,value: 8325000,name: "The Vito Shipyard.", city: "Delta", province: "British Columbia",team_id: 4, in_development: false, developed: false}])
Property.create!([{property_type_id: 2,value: 7550000,name: "Hamilton Industrial.", city: "Hamilton", province: "Ontario",team_id: 5, in_development: false, developed: false}])
Property.create!([{property_type_id: 2,value: 8669000,name: "60 d’Anvers.", city: "Sainte Augestine", province: "Quebec",team_id: 6, in_development: false, developed: false}])
Property.create!([{property_type_id: 2,value: 6998000,name: "Northwest Warehouse.", city: "Calgary", province: "Alberta",team_id: 7, in_development: false, developed: false}])
Property.create!([{property_type_id: 2,value: 5668000,name: "Industrial Shop.", city: "Fort Mac", province: "Alberta",team_id: 8, in_development: false, developed: false}])
Property.create!([{property_type_id: 2,value: 5000000,name: "Jet Power Building.", city: "Edmonton", province: "Alberta",team_id: 9, in_development: false, developed: false}])
Property.create!([{property_type_id: 2,value: 6108000,name: "15 International Place.", city: "St. John’s", province: "Newfoundland",team_id: 10, in_development: false, developed: false}])

Property.create!([{property_type_id: 3,value: 21000000,name: "Park Royal Shopping Center", city: "Vancouver", province: "British Columbia",team_id: 1, in_development: false, developed: false}])
Property.create!([{property_type_id: 3,value: 16725000,name: "Market Mall", city: "Saskatoon", province: "Saskatchewan",team_id: 2, in_development: false, developed: false}])
Property.create!([{property_type_id: 3,value: 18397000,name: "West Edmonton Mall", city: "Edmonton", province: "Alberta",team_id: 3, in_development: false, developed: false}])
Property.create!([{property_type_id: 3,value: 15872091,name: "Metropolis at Metrotown", city: "Vancouver", province: "British Columbia",team_id: 4, in_development: false, developed: false}])
Property.create!([{property_type_id: 3,value: 19872091,name: "Coquitlam Center Mall", city: "Coquitlam", province: "British Columbia",team_id: 5, in_development: false, developed: false}])
Property.create!([{property_type_id: 3,value: 20872091,name: "Outlet Collection at Niagra", city: "Niagra Falls", province: "Ontario",team_id: 6, in_development: false, developed: false}])
Property.create!([{property_type_id: 3,value: 20839051,name: "Square One Shopping Center", city: "Mississauga", province: "Ontario",team_id: 7, in_development: false, developed: false}])
Property.create!([{property_type_id: 3,value: 19378051,name: "Cornwall Center", city: "Regina", province: "Saskatchewan",team_id: 8, in_development: false, developed: false}])
Property.create!([{property_type_id: 3,value: 18328161,name: "The Center", city: "Saskatoon", province: "Saskatchewan",team_id: 9, in_development: false, developed: false}])
Property.create!([{property_type_id: 3,value: 18328161,name: "The Center", city: "Saskatoon", province: "Saskatchewan",team_id: 10, in_development: false, developed: false}])

Property.create!([{property_type_id: 4,value: 13729161,name: "McCallum Hill Center", city: "Regina", province: "Saskatchewan",team_id: 1, in_development: false, developed: false}])
Property.create!([{property_type_id: 4,value: 15727361,name: "Avord Tower", city: "Regina", province: "Saskatchewan",team_id: 2, in_development: false, developed: false}])
Property.create!([{property_type_id: 4,value: 16747561,name: "TD Canada Trust Tower", city: "Toronto", province: "Ontario",team_id: 3, in_development: false, developed: false}])
Property.create!([{property_type_id: 4,value: 15728321,name: "Northwest Tower", city: "Regina", province: "Saskatchewan",team_id: 4, in_development: false, developed: false}])
Property.create!([{property_type_id: 4,value: 14229161,name: "Saskatoon Square", city: "Saskatoon", province: "Saskatchewan",team_id: 5, in_development: false, developed: false}])
Property.create!([{property_type_id: 4,value: 15234916,name: "Jeske Corporate Center", city: "Langley", province: "British Columbia",team_id: 6, in_development: false, developed: false}])
Property.create!([{property_type_id: 4,value: 16289161,name: "Phoenix Building", city: "Saskatoon", province: "Saskatchewan",team_id: 7, in_development: false, developed: false}])
Property.create!([{property_type_id: 4,value: 17000001,name: "Maryland Place", city: "Calgary", province: "Alberta",team_id: 8, in_development: false, developed: false}])
Property.create!([{property_type_id: 4,value: 16743161,name: "Sanofi Building", city: "Laval", province: "Quebec",team_id: 9, in_development: false, developed: false}])
Property.create!([{property_type_id: 4,value: 14329161,name: "Tour Laura", city: "Laval", province: "Quebec",team_id: 10, in_development: false, developed: false}])

Development.create!([{cost: 1300000, used: false, value: 0, development_time: 2, property_id: 1}])
Development.create!([{cost: 1300000, used: false, value: 0, development_time: 2, property_id: 2}])
Development.create!([{cost: 1300000, used: false, value: 0, development_time: 2, property_id: 3}])
Development.create!([{cost: 1300000, used: false, value: 0, development_time: 2, property_id: 4}])
Development.create!([{cost: 1300000, used: false, value: 0, development_time: 2, property_id: 5}])
Development.create!([{cost: 1300000, used: false, value: 0, development_time: 2, property_id: 6}])
Development.create!([{cost: 1300000, used: false, value: 0, development_time: 2, property_id: 7}])
Development.create!([{cost: 1300000, used: false, value: 0, development_time: 2, property_id: 8}])
Development.create!([{cost: 1300000, used: false, value: 0, development_time: 2, property_id: 9}])
Development.create!([{cost: 1300000, used: false, value: 0, development_time: 2, property_id: 10}])
Development.create!([{cost: 700000, used: false, value: 0, development_time: 2, property_id: 11}])
Development.create!([{cost: 700000, used: false, value: 0, development_time: 2, property_id: 12}])
Development.create!([{cost: 700000, used: false, value: 0, development_time: 2, property_id: 13}])
Development.create!([{cost: 700000, used: false, value: 0, development_time: 2, property_id: 14}])
Development.create!([{cost: 700000, used: false, value: 0, development_time: 2, property_id: 15}])
Development.create!([{cost: 700000, used: false, value: 0, development_time: 2, property_id: 16}])
Development.create!([{cost: 700000, used: false, value: 0, development_time: 2, property_id: 17}])
Development.create!([{cost: 700000, used: false, value: 0, development_time: 2, property_id: 18}])
Development.create!([{cost: 700000, used: false, value: 0, development_time: 2, property_id: 19}])
Development.create!([{cost: 700000, used: false, value: 0, development_time: 2, property_id: 20}])
Development.create!([{cost: 2000000, used: false, value: 0, development_time: 2, property_id: 21}])
Development.create!([{cost: 2000000, used: false, value: 0, development_time: 2, property_id: 22}])
Development.create!([{cost: 2000000, used: false, value: 0, development_time: 2, property_id: 23}])
Development.create!([{cost: 2000000, used: false, value: 0, development_time: 2, property_id: 24}])
Development.create!([{cost: 2000000, used: false, value: 0, development_time: 2, property_id: 25}])
Development.create!([{cost: 2000000, used: false, value: 0, development_time: 2, property_id: 26}])
Development.create!([{cost: 2000000, used: false, value: 0, development_time: 2, property_id: 27}])
Development.create!([{cost: 2000000, used: false, value: 0, development_time: 2, property_id: 28}])
Development.create!([{cost: 2000000, used: false, value: 0, development_time: 2, property_id: 29}])
Development.create!([{cost: 2000000, used: false, value: 0, development_time: 2, property_id: 30}])
Development.create!([{cost: 1700000, used: false, value: 0, development_time: 2, property_id: 31}])
Development.create!([{cost: 1700000, used: false, value: 0, development_time: 2, property_id: 32}])
Development.create!([{cost: 1700000, used: false, value: 0, development_time: 2, property_id: 33}])
Development.create!([{cost: 1700000, used: false, value: 0, development_time: 2, property_id: 34}])
Development.create!([{cost: 1700000, used: false, value: 0, development_time: 2, property_id: 35}])
Development.create!([{cost: 1700000, used: false, value: 0, development_time: 2, property_id: 36}])
Development.create!([{cost: 1700000, used: false, value: 0, development_time: 2, property_id: 37}])
Development.create!([{cost: 1700000, used: false, value: 0, development_time: 2, property_id: 38}])
Development.create!([{cost: 1700000, used: false, value: 0, development_time: 2, property_id: 39}])
Development.create!([{cost: 1700000, used: false, value: 0, development_time: 2, property_id: 40}])

i = 1
Property.all.each do |prop|
  puts i
  prop.development_id = i
  prop.save!
  i += 1
end

Incentive.create([{description: "4 Industrial Properties Owned", value: 5000000, incentive_type: 1, calculation_key: "propertyType1Count", completed_key: "propertyType1"}])
Incentive.create([{description: "7 Multi-Residential Properties Owned", value: 4000000, incentive_type: 1, calculation_key: "propertyType2Count", completed_key: "propertyType2"}])
Incentive.create([{description: "3 Office Properties Owned", value: 6000000, incentive_type: 1, calculation_key: "propertyType3Count", completed_key: "propertyType3"}])
Incentive.create([{description: "7 Retail Properties Owned", value: 5000000, incentive_type: 1, calculation_key: "propertyType4Count", completed_key: "propertyType4"}])
Incentive.create([{description: "4 Properties owned in Alberta", value: 4000000, incentive_type: 1, calculation_key: "province1Count", completed_key: "province1"}])
Incentive.create([{description: "4 Properties owned in British Columia", value: 4000000, incentive_type: 1, calculation_key: "province2Count", completed_key: "province2"}])
Incentive.create([{description: "3 Properties owned in Nova Scotia", value: 4000000, incentive_type: 1, calculation_key: "province3Count", completed_key: "province3"}])
Incentive.create([{description: "3 Properties owned in Ontario", value: 4000000, incentive_type: 1, calculation_key: "province4Count", completed_key: "province4"}])
Incentive.create([{description: "3 Properties owned in Quebec", value: 4000000, incentive_type: 1, calculation_key: "province5Count", completed_key: "province5"}])
Incentive.create([{description: "2 Properties owned in Saskatchewan", value: 4000000, incentive_type: 1, calculation_key: "province6Count", completed_key: "province6"}])
Incentive.create([{description: "10 Acquisitions Completed", value: 5000000, incentive_type: 1, calculation_key: "tradedPropertiesCount", completed_key: "traded1"}])
Incentive.create([{description: "20 Acquisitions Completed", value: 7500000, incentive_type: 1, calculation_key: "tradedPropertiesCount", completed_key: "traded2"}])
Incentive.create([{description: "30 Acquisitions Completed", value: 10000000, incentive_type: 1, calculation_key: "tradedPropertiesCount", completed_key: "traded3"}])
Incentive.create([{description: "2 Developments Completed", value: 5000000, incentive_type: 1, calculation_key: "developmentsCount", completed_key: "developments1"}])
Incentive.create([{description: "5 Developments Completed", value: 7500000, incentive_type: 1, calculation_key: "developmentsCount", completed_key: "developments2"}])
Incentive.create([{description: "8 Developments Completed", value: 10000000, incentive_type: 1, calculation_key: "developmentsCount", completed_key: "developments3"}])

Incentive.create([{description: "Most Acquisitions", value: 7000000, incentive_type: 1, calculation_key: "tradedPropertiesCount"}])
Incentive.create([{description: "Most Developments", value: 5000000, incentive_type: 1, calculation_key: "developmentsCount"}])
Incentive.create([{description: "Most Industrial Properties Owned", value: 3000000, incentive_type: 1, calculation_key: "propertyType2Count"}])
Incentive.create([{description: "Most Multi-Residential Properties Owned", value: 3000000, incentive_type: 1, calculation_key: "propertyType1Count"}])
Incentive.create([{description: "Most Office Properties Owned", value: 3000000, incentive_type: 1, calculation_key: "propertyType3Count"}])
Incentive.create([{description: "Most Retail Properties Owned", value: 3000000, incentive_type: 1, calculation_key: "propertyType4Count"}])
Incentive.create([{description: "Lowest Cash Balance", value: 4000000, incentive_type: 2, calculation_key: "cashBalance"}])
Incentive.create([{description: "Highest Property Value", value: 6000000, incentive_type: 2, calculation_key: "totalPropertyValue"}])
