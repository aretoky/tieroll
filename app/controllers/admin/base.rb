class Admin::Base < ApplicationController
  def log_in admin
    session[:admin_id] = admin.id
  end

  def log_out
    session[:admin_id] = nil
  end 
end
