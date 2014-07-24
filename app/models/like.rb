class Like < ActiveRecord::Base
  attr_accessible :comment_id, :user_id

  belongs_to :comment, inverse_of: :likes
  belongs_to :user, inverse_of: :likes
end
