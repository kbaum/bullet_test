class Space < ActiveRecord::Base
  attr_accessible :suite

  has_many :user_spaces, :dependent => :destroy, validate: false, inverse_of: :space, order: 'user_spaces.position'
  has_many :users, :through => :user_spaces,
    :order=>'user_spaces.position, user_spaces.id'

end
