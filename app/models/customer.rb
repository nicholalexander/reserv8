class Customer < ActiveRecord::Base
  has_secure_password
  
  has_many :reservations

end
