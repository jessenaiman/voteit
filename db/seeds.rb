# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
admin = User.create!(name: "admin", email: "admin@voteit.ca")

g1 = Group.create!(title: 'Corporate', privacy: "public").users << admin
g2 = Group.create!(title: 'Occupy Toronto', privacy: "public")
g3 = Group.create!(title: 'Trivial', privacy: "public")
g4 = Group.create!(title: 'Urgent', privacy: "public")
g5 = Group.create!(title: 'Global', privacy: "public")

#q1 = Question.create!(name: "Do you think Vote-It deserves to win?", group: g1)