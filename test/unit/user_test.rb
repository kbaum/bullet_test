require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def setup
    user = User.create!(username: 'josie')
    3.times do |index|
      post = Post.create!(user: user, content: "hello post #{index}")
      2.times do |index|
        post.comments.create!(content: "hello comment #{index}")
      end
    end

  end

  def teardown
    Bullet.perform_out_of_channel_notifications if Bullet.notification?
    Bullet.end_request
  end


  test 'this test should also raise an error due to n+1 select issue' do
    Bullet.start_request
    puts "starting request ***********"
    ActiveRecord::Base.logger = Logger.new(STDOUT)
    comment = Comment.last
    User.find_by_username!('josie').posts.each do |post|
      post.comments.include?(comment)
    end
  end
end
