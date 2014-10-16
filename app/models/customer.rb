class Customer < ActiveRecord::Base
  has_secure_password

  #relationships  
  has_many :reservations

  #validations
  validates :email, presence: true
  validates :email, uniqueness: true

end
