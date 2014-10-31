module API
  module V1
    class API::V1::RestaurantsController < ApplicationController
      
      respond_to :json

      def index
        respond_with Restaurant.all
      end

      def show
        #what about using ActiveResource

        @restaurant = Restaurant.find_by_id(params["id"])

        #respond with meaniful response
        if @restaurant
          respond_with @restaurant
        #even if it's an error
        else
          @id = params["id"]
          render 'resource_not_found'
        end

      end


    end
  end
end
