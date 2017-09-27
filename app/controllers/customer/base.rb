class Customer::Base < ApplicationController
  def log_in user
    session[:user_id] = user.id
  end

  def log_out
    session[:user_id] = nil
  end


  private
  def current_user
    if session[:user_id]
      @current_user ||= User.find_by(id: session[:user_id])
    end
  end
  helper_method :current_user
end
