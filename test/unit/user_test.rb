require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "this test should fail because there is an n+1 select issue" do
    user = User.create!(username: 'josie')
    3.times do |index|
      post = Post.create!(user: user, content: "hello post #{index}")
      2.times do |index|
        post.comments.create!(content: "hello comment #{index}")
      end
    end

    Bullet.start_request
    Bullet.perform_out_of_channel_notifications if Bullet.notification?
    User.find_by_username!('josie').posts.each do |post|
      puts post.content
      post.comments.each do |comment|
        puts comment.content
      end
    end
    Bullet.end_request
  end
end
