class Management::BaseController < ApplicationController
  layout 'management'

  # before_filter :authorize_manager

  def current_manager
    @current_manager ||= Manager.find(session[:manager_id]) if session[:manager_id]
  end

  helper_method :current_manager

  def authorize_manager
    redirect_to root_url, alert: "You are not an manager" if current_manager.nil?
  end

end
