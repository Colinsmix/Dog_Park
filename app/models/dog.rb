class Dog < ActiveRecord::Base
  has_many :ownerships
  has_many :owners, through: :ownerships

  validates_presence_of :name

end
