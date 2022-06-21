# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Post.destroy_all
User.destroy_all

u1 = User.create(email:'test1@testing.com', name:'ur_pet_monkey', password:123456)
u2 = User.create(email:'test2@testing.com', name:'misterman108', password:123456)
u3 = User.create(email:'test3@testing.com', name:'Run4Boy', password:123456)

10.times do
    title = Faker::Game.title
    text = Faker::TvShows::BrooklynNineNine.quote
    u1.posts.create(title: title, body: text)
    u2.posts.create(title: title, body: text)
    u3.posts.create(title: title, body: text)
end

puts "#{Post.all.size} posts seeded"
