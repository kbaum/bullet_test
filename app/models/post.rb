class Post < ActiveRecord::Base
  attr_accessible :content, :user
  has_many :comments, inverse_of: :post
  belongs_to :user, inverse_of: :posts
end
