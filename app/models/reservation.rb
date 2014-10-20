class Reservation < ActiveRecord::Base
  #relationships
  belongs_to :customer
  belongs_to :table
  # belongs_to :restaurant, through: :tables - use delegate?
  delegate :restaurant, :to => :table, :allow_nil => true


  #validations
  validates :price, :date, :start_time, presence: true

  def restaurant
    table.restaurant
  end
end
