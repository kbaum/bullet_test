require 'test_helper'

class UserTest < ActiveSupport::TestCase

  #def setup
  #  user = User.create!(username: 'josie')
  #  3.times do |index|
  #    post = Post.create!(user: user, content: "hello post #{index}")
  #    2.times do |index|
  #      comment = post.comments.create!(content: "hello comment #{index}")
  #      2.times do |like_index|
  #        comment.likes.create!(user_id: User.create!(username: "#user#{like_index}"))
  #      end
  #    end
  #  end

  #end

  #def teardown
  #  Bullet.perform_out_of_channel_notifications if Bullet.notification?
  #  Bullet.end_request
  #end


  #test 'this test should also raise an error due to n+1 select issue' do
  #  Bullet.unused_eager_loading_enable = false
  #  Bullet.start_request
  #  puts "starting request ***********"
  #  ActiveRecord::Base.logger = Logger.new(STDOUT)
  #  comment = Comment.last
  #  User.find_by_username!('josie').posts.includes(comments: [:likes, :users]).each do |post|
  #    post.comments.each do |comment|
  #      comment.likes.each do |like|
  #        puts like.user_id
  #      end
  #    end
  #  end
  #end
end
