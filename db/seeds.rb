# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Need.create title: "Need1", amount_requested: 1000000, posted_at: Time.now, description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod"
User.create name: "User1", email: "rob@notch8.com", password: "testing123", is_admin: true
User.create name: "User2", email: "user2@example.com", password: "testing123"
User.create name: "User3", email: "user3@example.com", password: "testing123"
User.create name: "User4", email: "user4@example.com", password: "testing123"
Donation.create need_id: 1, user_id: 2, amount: 10.00
Donation.create need_id: 1, user_id: 3, amount: 10.00
Donation.create need_id: 1, user_id: 4, amount: 10.00
