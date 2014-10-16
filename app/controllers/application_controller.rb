class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  private

  def current_customer
    @current_user ||= Customer.find(session[:customer_id]) if session[:customer_id]
  end
  
  helper_method :current_customer
  
  def authorize_customer
    redirect_to login_url, alert: "not authorized!" if current_customer.nil?
  end

end
