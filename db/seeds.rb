# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(name: "foobar", email: "foobar@example.com", password: "varun2@7", password_confirmation: "varun2@7")

49.times do |n|
  name = Faker::Name.name
  email = "user-#{n+1}@example.com"
  password = "password"
  User.create!(name: name, email: email, password: password, password_confirmation: password)
end

users = User.order(:created_at)
50.times do |p|
  content = Faker::Lorem.sentence(word_count: 15)
  users.each{ |user| user.posts.create!(content: content)}
end

users = User.all
user  = users.first
following = users[2..50]
followers = users[3..40]
following.each { |followed| user.follow(followed) }
followers.each { |follower| follower.follow(user) }



