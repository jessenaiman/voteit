# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
admin = User.create!(name: "admin", email: "admin@voteit.ca")

groups = ['Corporate', 'Occupy Toronto', 'Trivial', 'Urgent', 'Global']

groups.each do |group|
  g = Group.create!(title: group, privacy: "public")
  g.users << admin
  g.save
end

q1 = Question.create!(name: "How Great is AngelHack?", group: Group.first, user: admin)

a = ["Great", "Extreme", "Perfect"]
a.each do |answer|
  q1.answers.create!(name: answer, question_id: q1.id)
end
  
(200..1000).to_a.sample.times { q1.votes.create(answer: a.sample) }

c = 1
q1.votes.each do |vote|
  c += 1
  u = User.create!(name: "Bob#{c}", email: "bob#{c}@gmail.com")
  uv = UserVote.create!(question_id: q1.id)
  u.user_votes << uv
  u.save
end
