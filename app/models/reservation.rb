class Reservation < ActiveRecord::Base
  #relationships
  belongs_to :customer

  #validations
  validates :price, :date, :start_time, presence: true

end
