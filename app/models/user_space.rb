class UserSpace < ActiveRecord::Base
  attr_accessible :space_id, :user_id, :role

  belongs_to :user, inverse_of: :user_spaces
  belongs_to :space, inverse_of: :user_spaces

end
