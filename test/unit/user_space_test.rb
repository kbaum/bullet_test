require 'test_helper'

class UserSpaceTest < ActiveSupport::TestCase
  def setup
    ['josie', 'noah', 'wendy'].each_with_index do |username, index|
      user = User.create!(username: username)
      space = Space.create!(suite: index.to_s)
      UserSpace.create!(user_id: user, space_id: space.id, role: 'admin')
    end
  end

  test 'this should raise an error' do
    Bullet.unused_eager_loading_enable = false
    Bullet.start_request
    puts "starting request ***********"
    ActiveRecord::Base.logger = Logger.new(STDOUT)

    Space.includes([:user_spaces, :users ]).find_each do |space|
      space.user_spaces.each do |user_space|
        puts user_space.role
      end
    end


  end


end
