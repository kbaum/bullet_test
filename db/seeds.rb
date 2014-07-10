# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

all_users = ['kbaum', 'wbaum', 'jbaum', 'nbaum'].collect do |username|
  User.create!(username: username)
end

all_users.each do |user|
  post1 = Post.create(content: "Post 1", user: user)
  post1.comments.create(content: "comment 1" )
  post1.comments.create(content: "comment 2" )
  
  post2 = Post.create(content: "Post 2", user: user)
  post2.comments.create(content: "comment 3")
  post2.comments.create(content: "comment 4")
end
