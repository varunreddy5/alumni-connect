# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(name: "foobar", email: "foobar@example.com", username: 'foobar', password: "varun2@7", password_confirmation: "varun2@7")

49.times do |n|
  name = Faker::Name.name
  email = "user-#{n+1}@example.com"
  password = "password"
  User.create!(name: name, email: email, username:"user-#{n+1}" ,password: password, password_confirmation: password)
end

users = User.all
50.times do |p|
  content = Faker::Lorem.sentence(word_count: 30)
  users.each{ |user| user.posts.create!(content: content)}
end

users = User.all
user  = users.first
following = users[20..30]
followers = users[40..50]
following.each { |followed| user.follow(followed) }
followers.each { |follower| follower.follow(user) }



