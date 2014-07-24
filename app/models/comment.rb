class Comment < ActiveRecord::Base
  attr_accessible :content
  belongs_to :post, inverse_of: :comments
  has_many :likes, inverse_of: :comment
  has_many :users, through: :likes
end
