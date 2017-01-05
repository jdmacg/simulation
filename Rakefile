# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require_relative 'config/application'

Rails.application.load_tasks

task "db:populate" do
  Property.create!(city: "Toronto", latitude: "43.6532", longitude: "79.3832")
  Property.create!(city: "Ottawa", latitude: "45.4215", longitude: "75.6972")
  Property.create!(city: "Vancouver", latitude: "49.2827", longitude: "123.1207")
  Property.create!(city: "Montreal", latitude: "45.5017", longitude: "73.5673")
  Property.create!(city: "Halifax", latitude: "44.6488", longitude: "63.5752")
  Property.create!(city: "Calgary", latitude: "51.0486", longitude: "114.0708")

  User.create!(username: "graham.sm94@gmail.com", password: "minotaur", password_confirmation: "minotaur")
  User.create!(username: "jordan@gmail.com", password: "jordan", password_confirmation: "jordan")

end
