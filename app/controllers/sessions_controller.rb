class SessionsController < ApplicationController
  
  def new
  end

  def create
    @customer = Customer.find_by_email(params[:login][:email])
    if @customer && @customer.authenticate(params[:login][:password])
      session[:customer_id] = @customer.id
      redirect_to restaurants_path
    else
      flash.now.alert = "Email or Password Invalid"
      render "new"
    end
  end

  def destroy
    session[:customer_id] = nil
    session[:admin_id] = nil
    redirect_to root_url, notice: "logged out!"
  end

end