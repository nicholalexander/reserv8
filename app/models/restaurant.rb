class Restaurant < ActiveRecord::Base
  has_many :reservations, through: :tables
  has_many :tables
  

end
