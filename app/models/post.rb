class Post < ActiveRecord::Base
  attr_accessible :content
  has_many :comments, inverse_of: :post
end
