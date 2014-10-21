class ReservationsController < ApplicationController

  def index
    @reservations = Reservation.all
  end

  def new
  end

  def buy_reservation
    #charge the user money
    paid = true

    #assign the reservation
    reservation = Reservation.find_by_id(params["reservation_id"])
    current_customer.reservations << reservation
    redirect_to restaurants_path
  end


end
