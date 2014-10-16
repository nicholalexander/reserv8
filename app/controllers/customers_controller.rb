class CustomersController < ApplicationController

  def index
    @customers = Customer.all
  end

  def new
  end

  def create
    @customer = Customer.create(user_params)
    if @customer.save
      redirect_to customers_path
    else
      redirect_to root_url :notice => "already exists"
    end
  end

  def show
    @customer = Customer.find_by_id(params["id"])
  end

  private
  def user_params
    params.require(:customer).permit(:first_name, :email, :password, :password_confirmation)
  end


end
