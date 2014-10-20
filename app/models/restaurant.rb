class Restaurant < ActiveRecord::Base
  has_many :reservations, through: :tables
  has_many :tables

  has_and_belongs_to_many :managers  

end
