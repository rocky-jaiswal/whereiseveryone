# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Environment variables (ENV['...']) are set in the file config/application.yml.
# See http://railsapps.github.io/rails-environment-variables.html

users = User.create([{ name: 'Rocky' }, { name: 'Aishwarya' }, { name: 'Abhishek' }, { name: 'Akshat' }, { name: 'Shadab' }])
status = Status.create([{title: 'Working from home'}, {title: 'On PTO'}])

us1 = UserStatus.create({user_id: users.first.id, status_id: status.first.id, comment: 'In Greater Noida', status_on: Date.today})
us2 = UserStatus.create({user_id: users.last.id, status_id: status.last.id, status_on: Date.today})