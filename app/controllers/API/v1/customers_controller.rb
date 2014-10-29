module API
  module V1
    class API::V1::CustomersController < ApplicationController

      respond_to :json

      def index
        @customers = Customer.all
      end

    end
  end
end
