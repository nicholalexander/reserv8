class WelcomeController < ApplicationController

  respond_to :json

  def index
    binding.pry
    respond_with "Welcome to the Reserv8.es API - Check /v1"
  end

end
