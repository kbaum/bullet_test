class Comment < ActiveRecord::Base
  attr_accessible :content
  belongs_to :post, inverse_of: :comments
end
