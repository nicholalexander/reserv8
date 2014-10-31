module API
  module V1
    class API::V1::CustomersController < ApplicationController

      respond_to :json

      def index
        @customers = Customer.all
      end

      def show
        @customer = Customer.find_by_id(params["id"])
        respond_with @customer
      end

    end
  end
end
