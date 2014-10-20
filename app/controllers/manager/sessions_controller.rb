class Manager::SessionsController < ApplicationController

  def new
  end

  def create
    @manager = Manager.find_by_email(params[:login][:email])
    if @manager && @manager.authenticate(params[:login][:password])
      session[:manager_id] = @manager.id
      flash[:alert] = "Welcome #{@manager.first_name}"
      redirect_to manager_root_path
    else
      flash[:alert] = "Email or Password is invald"
      render "new"
    end
  end

  def logout
    session[:manager_id] = nil
    redirect_to root_path, notice: 'logged out!'
  end
end
