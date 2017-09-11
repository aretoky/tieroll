class Admin::Base < ApplicationController
  def log_in admin
    session[:admin_id] = admin.id
  end

  def log_out
    session[:admin_id] = nil
  end

  def current_admin
    @current_admin ||= Admin.find_by(id: session[:admin_id])
  end

  def admin_logget_in?
    !current_admin.nil?
  end
end
