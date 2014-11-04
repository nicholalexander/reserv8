module API
  module V1
    class API::V1::WelcomeController < ApplicationController
  
      respond_to :json

      def index
        respond_with "Welcome to Reserv8.es API V1."
      end

    end
  end
end
