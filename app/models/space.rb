class Space < ActiveRecord::Base
  attr_accessible :suite

  has_many :user_spaces, inverse_of: :space
  has_many :users, :through => :user_spaces,
    :order=>'user_spaces.position, user_spaces.id'

end
