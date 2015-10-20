# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Organization.create title: "Organization1", access_code: "testing"

Need.create title: "Need1", amount_requested: 1000000, posted_at: Time.now, description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod", organization_id: 1
Donor.create name: "Donor1", email: "rob@notch8.com", password: "testing123", is_admin: true
Donor.create name: "Donor2", email: "donor2@example.com", password: "testing123"
Donor.create name: "Donor3", email: "donor3@example.com", password: "testing123"
Donor.create name: "Donor4", email: "donor4@example.com", password: "testing123"
Donation.create need_id: 1, donor_id: 2, amount: 10.00
Donation.create need_id: 1, donor_id: 3, amount: 10.00
Donation.create need_id: 1, donor_id: 4, amount: 10.00
