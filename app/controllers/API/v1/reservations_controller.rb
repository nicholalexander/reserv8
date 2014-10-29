module API
  module V1
    class API::V1::ReservationsController < ApplicationController

      respond_to :json

      def index
        respond_with Reservation.all
      end    
      
    end
  end
end


