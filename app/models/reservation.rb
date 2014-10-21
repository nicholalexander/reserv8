class Reservation < ActiveRecord::Base
  #relationships
  belongs_to :customer
  belongs_to :table
  # belongs_to :restaurant, through: :tables - use delegate?
  #TODO
  #delegate :restaurant, :to => :table, :allow_nil => true


  #validations
  validates :price, :date, :start_time, presence: true

  def restaurant
    table.restaurant
  end

  def available?
    #it's available if it is not assigned to a user
    #it takes place after now.
    self.customer == nil && self.start_time > Time.now
  end


end
