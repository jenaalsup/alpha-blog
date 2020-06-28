class ApplicationController < ActionController::Base

  helper_method :current_user, :logged_in? # makes these methods available to views as well, not just controllers
  
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id] # if current user already exists, return current user, else, find the user in the database
  end

  def logged_in?
    !!current_user # turn current user into a boolean by using !!
  end

  def require_user
    if !logged_in?
      flash[:alert] = "You must be logged in to perform that action"
      redirect_to login_path
    end
  end

end
