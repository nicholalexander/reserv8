class ReservationsController < ApplicationController

  def index
    @reservations = Reservation.all
  end

  def new
  end

  def buy_reservation
    reservation = Reservation.find_by_id(params["reservation_id"])
    
    #charge the user money
    #TODO wrap api key into environmental variable
    Stripe.api_key = "sk_test_li0Cx9dE5T4vdnxpTdt1tb4F"

    #TODO convert_reservation_price / basically mult by 100
    #TODO error handing https://stripe.com/docs/api#errors
    charge = Stripe::Charge.create(:amount => reservation.price.to_i * 100,
                          :currency => "usd",
                          :customer => current_customer.stripe_id,
                          :description => "Charge for reservation at #{reservation.restaurant.name}")

    if charge.paid
      #assign the reservation
      current_customer.reservations << reservation
      redirect_to restaurants_path
    end

  end


end
