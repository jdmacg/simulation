# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#   User.create([{name: jordan'}])

Team.create!([{team_name: "Quadreal", cash_balance: 29900000}])
Team.create!([{team_name: "Brookfield", cash_balance: 31800000}])
Team.create!([{team_name: "Fengate", cash_balance: 28850000}])
Team.create!([{team_name: "IAM", cash_balance: 32000000}])
Team.create!([{team_name: "Manulife", cash_balance: 33005000}])
Team.create!([{team_name: "RioCan", cash_balance: 32890000}])
Team.create!([{team_name: "DREAM", cash_balance: 29500000}])
Team.create!([{team_name: "NYX Capital", cash_balance: 32675000}])

User.create!([{username: "jaron.kaller", password: "qric-admin-1", password_confirmation: "qric-admin-1", team_id: 1, admin: true}])
User.create!([{username: "monica.carnicelli", password: "qric-admin-2", password_confirmation: "qric-admin-2", team_id: 1, admin: true}])

User.create!([{username: "team.one", password: "4TGNWtjg", password_confirmation: "4TGNWtjg", team_id: 1}])

User.create!([{username: "team.two", password: "aHyHmxgU", password_confirmation: "aHyHmxgU",team_id: 2}])

User.create!([{username: "team.three", password: "bWVK8JQj", password_confirmation: "bWVK8JQj",team_id: 3}])

User.create!([{username: "team.four", password: "8NPtVyWK", password_confirmation: "8NPtVyWK",team_id: 4}])

User.create!([{username: "team.five", password: "LkGkr9M2", password_confirmation: "LkGkr9M2",team_id: 5}])

User.create!([{username: "team.six", password: "EprLEv2x", password_confirmation: "EprLEv2x",team_id: 6}])

User.create!([{username: "team.seven", password: "aTXP9d3s", password_confirmation: "aTXP9d3s",team_id: 7}])

User.create!([{username: "team.eight", password: "hkvD8ksr", password_confirmation: "hkvD8ksr",team_id: 8}])


PropertyType.create!([{ description: "Office" }])
PropertyType.create!([{ description: "Industrial" }])
PropertyType.create!([{ description: "Multi-Res" }])
PropertyType.create!([{ description: "Retail" }])

Property.create!([{property_type_id: 3,value: 113000000,name: "The Uptown Residence.", city: "Toronto", province: "Ontario",team_id: 3, in_development: false, developed: false}])
Property.create!([{property_type_id: 3,value: 25000000,name: "Le LDV.", city: "Montreal", province: "Quebec",team_id: 4, in_development: false, developed: false}])
Property.create!([{property_type_id: 3,value: 20000000,name: "Atrie Residence.", city: "Delta", province: "British Columbia",team_id: 2, in_development: false, developed: false}])
Property.create!([{property_type_id: 1,value: 20000000,name: "909 Avenue West", city: "Calgary", province: "Alberta",team_id: 2, in_development: false, developed: false}])
Property.create!([{property_type_id: 3,value: 15000000,name: " Luxury Condominium Development Land", city: "Edmonton", province: "Alberta",team_id: 4, in_development: false, developed: false}])
Property.create!([{property_type_id: 2,value: 4995000,name: "1 Chandler Ave.", city: "Amherst", province: "Nova Scotia",team_id: 8, in_development: false, developed: false}])
Property.create!([{property_type_id: 2,value: 27500000,name: "London Industrial.", city: "London", province: "Ontario",team_id: 5, in_development: false, developed: false}])
Property.create!([{property_type_id: 4,value: 115800000,name: "Park Royal Shopping Center", city: "Vancouver", province: "British Columbia",team_id: 4, in_development: false, developed: false}])
Property.create!([{property_type_id: 4,value: 125000000,name: "Market Mall", city: "Saskatoon", province: "Saskatchewan",team_id: 6, in_development: false, developed: false}])
Property.create!([{property_type_id: 4,value: 64600000,name: "West Edmonton Mall", city: "Edmonton", province: "Alberta",team_id: 2, in_development: false, developed: false}])
Property.create!([{property_type_id: 4,value: 30310000,name: "Metropolis at Metrotown", city: "Vancouver", province: "British Columbia",team_id: 6, in_development: false, developed: false}])
Property.create!([{property_type_id: 4,value: 15500000,name: "Coquitlam Center Mall", city: "Coquitlam", province: "British Columbia",team_id: 3, in_development: false, developed: false}])

Property.create!([{property_type_id: 3,value: 3300000,name: "The Burdette Apartments.", city: "Delta", province: "British Columbia",team_id: 2, in_development: false, developed: false}])
Property.create!([{property_type_id: 3,value: 3250000,name: "Pinecrest Apartments.", city: "Delta", province: "British Columbia",team_id: 3, in_development: false, developed: false}])
Property.create!([{property_type_id: 3,value: 1000000,name: "Territorial Estates.", city: "North Battlford", province: "Saskatchewan",team_id: 5, in_development: false, developed: false}])
Property.create!([{property_type_id: 4,value: 1000000,name: "5325 West Boulevard.", city: "Delta", province: "British Columbia",team_id: 1, in_development: false, developed: false}])
Property.create!([{property_type_id: 4,value: 1500000,name: "1429 17th Ave.", city: "Edmonton", province: "Alberta",team_id: 2, in_development: false, developed: false}])
Property.create!([{property_type_id: 1,value: 3500000,name: "306 Queen Street.", city: "Saskatoon", province: "Saskatchewan",team_id: 4, in_development: false, developed: false}])
Property.create!([{property_type_id: 4,value: 5900000,name: "12004 Ave.", city: "Edmonton", province: "Alberta",team_id: 4, in_development: false, developed: false}])
Property.create!([{property_type_id: 3,value: 300000,name: "2403 Clifton Street.", city: "Amherst", province: "Nova Scotia",team_id: 3, in_development: false, developed: false}])
Property.create!([{property_type_id: 2,value: 4500000,name: "211 Hutchings Street.", city: "Winnipeg", province: "Manitoba",team_id: 4, in_development: false, developed: false}])
Property.create!([{property_type_id: 2,value: 11000000,name: "The Vito Shipyard.", city: "Delta", province: "British Columbia",team_id: 1, in_development: false, developed: false}])
Property.create!([{property_type_id: 4,value: 11000000,name: "Powell River Town.", city: "Delta", province: "BC",team_id: 3, in_development: false, developed: false}])
Property.create!([{property_type_id: 4,value: 3200000,name: "500 Saint-Georges, Trois Rivieres", city: "Sainte Augestine", province: "Quebec", team_id: 1, in_development: false, developed: false}])
Property.create!([{property_type_id: 3,value: 170000000,name: "Shangri-La Vancouver", city: "Vancouver", province: "British Columbia",team_id: 7, in_development: false, developed: false}])

Property.create!([{property_type_id: 4,value: 135000000,name: "Square One Shopping Center", city: "Mississauga", province: "Ontario",team_id: 8, in_development: false, developed: false}])
Property.create!([{property_type_id: 1,value: 178000000,name: "Absolute World South.", city: "Mississauga", province: "Ontario",team_id: 1, in_development: false, developed: false}])
Property.create!([{property_type_id: 1,value: 13500000,name: "McCallum Hill Center", city: "Regina", province: "Saskatchewan",team_id: 8, in_development: false, developed: false}])
Property.create!([{property_type_id: 4,value: 146000000,name: "Cornwall Center", city: "Regina", province: "Saskatchewan",team_id: 6, in_development: false, developed: false}])
Property.create!([{property_type_id: 3,value: 135000000,name: "Minto Metropole.", city: "Ottawa", province: "Ontario",team_id: 8, in_development: false, developed: false}])
Property.create!([{property_type_id: 4,value: 100000000,name: "The Center", city: "Saskatoon", province: "Saskatchewan",team_id: 2, in_development: false, developed: false}])
Property.create!([{property_type_id: 3,value: 165000000,name: "La Renaissance Apartments.", city: "Saskatoon", province: "Saskatchewan",team_id: 3, in_development: false, developed: false}])
Property.create!([{property_type_id: 3,value: 170000000,name: "Shangri-La Vancouver.", city: "Vancouver", province: "British Columbia",team_id: 2, in_development: false, developed: false}])
Property.create!([{property_type_id: 4,value: 159000000,name: "Residences of College.", city: "Toronto", province: "Ontario",team_id: 4, in_development: false, developed: false}])
Property.create!([{property_type_id: 1,value: 150000000,name: "Grifols Office Building.", city: "Moncton", province: "New Brunswick",team_id: 5, in_development: false, developed: false}])

Property.create!([{property_type_id: 4,value: 120000000,name: "Westphal Plaza", city: "Dartmous", province: "Nova Scotia",team_id: 5, in_development: false, developed: false}])
Property.create!([{property_type_id: 1,value: 100000000,name: "TD Canada Trust Tower", city: "Toronto", province: "Ontario",team_id: 1, in_development: false, developed: false}])
Property.create!([{property_type_id: 3,value: 75000000,name: "Centennial Towers.", city: "Moncton", province: "New Brunswick",team_id: 1, in_development: false, developed: false}])
Property.create!([{property_type_id: 4,value: 50000000,name: "Pioneer Square", city: "Vancouver", province: "British Columbia",team_id: 4, in_development: false, developed: false}])
Property.create!([{property_type_id: 2,value: 30000000,name: "Industrial Warehouse", city: "Saskatoon", province: "Saskatchewan",team_id: 8, in_development: false, developed: false}])
Property.create!([{property_type_id: 4,value: 35000000,name: "Royal Bank Building", city: "Dartmouth", province: "Nova Scotia",team_id: 8, in_development: false, developed: false}])
Property.create!([{property_type_id: 1,value: 34500000,name: "Saskatoon Square", city: "Saskatoon", province: "Saskatchewan",team_id: 7, in_development: false, developed: false}])
Property.create!([{property_type_id: 4,value: 23100000,name: "Chinook Centre", city: "Calgary", province: "Alberta",team_id: 3, in_development: false, developed: false}])
Property.create!([{property_type_id: 2,value: 20000000,name: "Hamilton Industrial.", city: "Hamilton", province: "Ontario",team_id: 8, in_development: false, developed: false}])
Property.create!([{property_type_id: 2,value: 16600000,name: "60 d’Anvers.", city: "Sainte Augestine", province: "Quebec",team_id: 1, in_development: false, developed: false}])
Property.create!([{property_type_id: 4,value: 16600000,name: "5235 Saint-Laurent", city: "Montreal", province: "Quebec",team_id: 5, in_development: false, developed: false}])

Property.create!([{property_type_id: 2,value: 15000000,name: " 6908 42 Street.", city: "Leduc", province: "Alberta",team_id: 6, in_development: false, developed: false}])
Property.create!([{property_type_id: 4,value: 12300000,name: " Woodgrove Center Mall.", city: "Nanaimo", province: "British Columbia",team_id: 2, in_development: false, developed: false}])
Property.create!([{property_type_id: 2,value: 10100000,name: " Kuusamo Energy Park.", city: "Leduc", province: "Alberta",team_id: 4, in_development: false, developed: false}])
Property.create!([{property_type_id: 1,value: 12300000,name: " Jeske Corporate Centre.", city: "Langley", province: "British Columbia",team_id: 7, in_development: false, developed: false}])
Property.create!([{property_type_id: 2,value: 7800000,name: " 235 River Road.", city: "Prince George", province: "British Columbia",team_id: 1, in_development: false, developed: false}])
Property.create!([{property_type_id: 1,value: 7500000,name: " 1600 Champlain Ave.", city: "Whitby", province: "Ontario",team_id: 5, in_development: false, developed: false}])
Property.create!([{property_type_id: 3,value: 6900000,name: " 3012 Alpine Crescent.", city: "Whistler", province: "British Columbia",team_id: 6, in_development: false, developed: false}])
Property.create!([{property_type_id: 2,value: 10000000,name: " The Vaults.", city: "Calgary", province: "Alberta",team_id: 7, in_development: false, developed: false}])
Property.create!([{property_type_id: 3,value: 5800000,name: " 2790 Dundas St W.", city: "Toronto", province: "Ontario",team_id: 6, in_development: false, developed: false}])
Property.create!([{property_type_id: 3,value: 13500000,name: "Stars Inn and Suites.", city: "Edmonton", province: "Alberta",team_id: 7, in_development: false, developed: false}])
Property.create!([{property_type_id: 1,value: 10000000,name: "Phoenix Building", city: "Saskatoon", province: "Saskatchewan",team_id: 8, in_development: false, developed: false}])

Property.create!([{property_type_id: 4,value: 5000000,name: "Allwood Professional center.", city: "Abbotsford", province: "British Columbia",team_id: 6, in_development: false, developed: false}])
Property.create!([{property_type_id: 2,value: 4995000,name: "6500 Cantelon.", city: "Windsor", province: "Ontario",team_id: 5, in_development: false, developed: false}])
Property.create!([{property_type_id: 4,value:4200000,name: "815 Tecumseh.", city: "Point - Claire", province: "Quebec",team_id: 4, in_development: false, developed: false}])
Property.create!([{property_type_id: 2,value: 4000000,name: "Postmedia Building.", city: "Calgary", province: "Alberta",team_id: 5, in_development: false, developed: false}])
Property.create!([{property_type_id: 2,value: 5000000,name: "Northwest Warehouse", city: "Calgary", province: "Alberta",team_id: 5, in_development: false, developed: false}])
Property.create!([{property_type_id: 1,value: 5500000,name: "Maryland Place", city: "Calgary", province: "Alberta",team_id: 8, in_development: false, developed: false}])
Property.create!([{property_type_id: 4,value: 4000000,name: "3868 Olive Av.", city: "Burnaby", province: "British Columbia",team_id: 6, in_development: false, developed: false}])
Property.create!([{property_type_id: 3,value: 3930000,name: "Faro Urban Apartment", city: "Montreal", province: "Quebec ",team_id: 8, in_development: false, developed: false}])
Property.create!([{property_type_id: 2,value: 3000000,name: "Glenwood Industrial Estates.", city: "Calgary", province: "British Columbia",team_id: 7, in_development: false, developed: false}])
Property.create!([{property_type_id: 2,value: 3000000,name: "Industrial Shop.", city: "Calgary", province: "Alberta",team_id: 6, in_development: false, developed: false}])
Property.create!([{property_type_id: 3,value: 3000000, name: "2345 Dundas Street", city: "Vancouver", province: "British Columbia",team_id: 7, in_development: false, developed: false}])
Property.create!([{property_type_id: 4,value: 4200000,name: "700 Sainte-Croix", city: "Saint Laurent", province: "Quebec",team_id: 7, in_development: false, developed: false}])

Property.create!([{property_type_id: 2,value: 1500000,name: "Distribution Facility.", city: "Calgary", province: "Alberta",team_id: 1, in_development: false, developed: false}])
Property.create!([{property_type_id: 4,value: 1500000,name: "Landmark Professional Center.", city: "Edmonton", province: "Alberta",team_id: 2, in_development: false, developed: false}])
Property.create!([{property_type_id: 2,value: 1000000,name: "Jet Power Building.", city: "Edmonton", province: "Alberta",team_id: 1, in_development: false, developed: false}])
Property.create!([{property_type_id: 4,value: 1000000,name: "Lethbridge Scenic Square.", city: "Lethbridge", province: "Alberta",team_id: 7, in_development: false, developed: false}])
Property.create!([{property_type_id: 3,value: 500000,name: "53 St. Margarets Bay.", city: "Halifax", province: "Nova Scotia",team_id: 3, in_development: false, developed: false}])
Property.create!([{property_type_id: 2,value: 1500000,name: "54 Clyde Ave.", city: "Mount Pearl", province: "Newfoundland",team_id: 3, in_development: false, developed: false}])
Property.create!([{property_type_id: 3,value: 45000000,name: "The Bowry.", city: "Ottawa", province: "Ontario",team_id: 7, in_development: false, developed: false}])
Property.create!([{property_type_id: 1,value: 48000000,name: "Sanofi Building", city: "Laval", province: "Quebec",team_id: 5, in_development: false, developed: false}])
Property.create!([{property_type_id: 1,value: 63000000,name: "Tour Laura", city: "Laval", province: "Quebec",team_id: 3, in_development: false, developed: false}])
Property.create!([{property_type_id: 1,value: 48000000,name: "5 Springdale", city: "St. John’s", province: "Newfoundland",team_id: 6, in_development: false, developed: false}])
Property.create!([{property_type_id: 4,value: 21000000,name: "265 Thomas Alton Blvd", city: "Burlington", province: "Ontario",team_id: 2, in_development: false, developed: false}])


Development.create!([{cost: 499500, used: false, value: 1200000, development_time: 3, property_id: 1}])
Development.create!([{cost: 60000000, used: false, value: 65000000, development_time: 3, property_id: 2}])
Development.create!([{cost: 52500000, used: false, value: 65000000, development_time: 3, property_id: 3}])
Development.create!([{cost: 20000000, used: false, value: 35000000, development_time: 3, property_id: 4}])
Development.create!([{cost: 11580000, used: false, value: 25000000, development_time: 3, property_id: 5}])
Development.create!([{cost: 6460000, used: false, value: 15000000, development_time: 3, property_id: 6}])
Development.create!([{cost: 3031000, used: false, value: 2900000, development_time: 3, property_id: 7}])
Development.create!([{cost: 22750000, used: false, value: 20000000, development_time: 3, property_id: 32}])
Development.create!([{cost: 2500000, used: false, value: 4000000, development_time: 3, property_id: 9}])
Development.create!([{cost: 2000000, used: false, value: 35000000, development_time: 3, property_id: 10}])
Development.create!([{cost: 35000000, used: false, value: 25000000, development_time: 3, property_id: 31}])
Development.create!([{cost: 1550000, used: false, value: 1250000, development_time: 2, property_id: 49}])
Development.create!([{cost: 1500000, used: false, value: 1750000, development_time: 2, property_id: 13}])
Development.create!([{cost: 1100000, used: false, value: 2500000, development_time: 2, property_id: 14}])
Development.create!([{cost: 1100000, used: false, value: 2500000, development_time: 2, property_id: 15}])
Development.create!([{cost: 1000000, used: false, value: 2000000, development_time: 2, property_id: 16}])
Development.create!([{cost: 590000, used: false, value: 1500000, development_time: 2, property_id: 66}])
Development.create!([{cost: 450000, used: false, value: 1100000, development_time: 2, property_id: 74}])
Development.create!([{cost: 350000, used: false, value: 900000, development_time: 2, property_id: 19}])
Development.create!([{cost: 330000, used: false, value: 750000, development_time: 1, property_id: 20}])
Development.create!([{cost: 325000, used: false, value: 300000, development_time: 1, property_id: 21}])
Development.create!([{cost: 320000, used: false, value: 544000, development_time: 1, property_id: 22}])
Development.create!([{cost: 200000, used: false, value: 340000, development_time: 1, property_id: 23}])
Development.create!([{cost: 160000, used: false, value: 272000, development_time: 1, property_id: 24}])
Development.create!([{cost: 150000, used: false, value: 255000, development_time: 1, property_id: 25}])
Development.create!([{cost: 100000, used: false, value: 212500, development_time: 1, property_id: 26}])
Development.create!([{cost: 30000, used: false, value: 170000, development_time: 1, property_id: 27}])
Development.create!([{cost: 6000, used: false, value: 51000, development_time: 1, property_id: 28}])
Development.create!([{cost: 125000, used: false, value: 42000, development_time: 1, property_id: 29}])




i = 1
Property.all.each do |prop|
  puts i
  prop.development_id = i
  prop.save!
  i += 1
  if i>=30
    break
  end
end

Incentive.create([{description: "4 Industrial Properties Owned", value: 5000000, incentive_type: 1, calculation_key: "propertyType1Count", completed_key: "propertyType1"}])
Incentive.create([{description: "7 Multi-Residential Properties Owned", value: 4000000, incentive_type: 1, calculation_key: "propertyType2Count", completed_key: "propertyType2"}])
Incentive.create([{description: "3 Office Properties Owned", value: 6000000, incentive_type: 1, calculation_key: "propertyType3Count", completed_key: "propertyType3"}])
Incentive.create([{description: "7 Retail Properties Owned", value: 5000000, incentive_type: 1, calculation_key: "propertyType4Count", completed_key: "propertyType4"}])
Incentive.create([{description: "4 Properties owned in Alberta", value: 4000000, incentive_type: 1, calculation_key: "province1Count", completed_key: "province1"}])
Incentive.create([{description: "4 Properties owned in British Columia", value: 4000000, incentive_type: 1, calculation_key: "province2Count", completed_key: "province2"}])
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
Incentive.create([{description: "Most Properties Owned", value: 4000000, incentive_type: 1, calculation_key: "propertiesCount"}])
Incentive.create([{description: "Most Industrial Properties Owned", value: 3000000, incentive_type: 1, calculation_key: "propertyType2Count"}])
Incentive.create([{description: "Most Multi-Residential Properties Owned", value: 3000000, incentive_type: 1, calculation_key: "propertyType1Count"}])
Incentive.create([{description: "Most Office Properties Owned", value: 3000000, incentive_type: 1, calculation_key: "propertyType3Count"}])
Incentive.create([{description: "Most Retail Properties Owned", value: 3000000, incentive_type: 1, calculation_key: "propertyType4Count"}])
Incentive.create([{description: "Lowest Cash Balance", value: 4000000, incentive_type: 2, calculation_key: "cashBalance"}])
Incentive.create([{description: "Highest Property Value", value: 6000000, incentive_type: 2, calculation_key: "totalPropertyValue"}])
