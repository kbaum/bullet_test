class User < ActiveRecord::Base
  attr_accessible :username

  has_many :posts, inverse_of: :user
  has_many :comments, through: :posts
  has_many :likes, inverse_of: :user

  has_many :user_spaces, inverse_of: :user
  has_many :space, through: :users_spaces

end
