# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Need.create title: "Need1", amount_requested: 1000000, posted_at: Time.now, description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod"
User.create name: "User1", email: "rob@notch8.com", password: "testing123", is_admin: true
