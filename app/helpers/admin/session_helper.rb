module Admin::SessionHelper
  def current_admin
    @current_admin ||= Admin.find_by(id: session[:admin_id])
  end

  def admin_logget_in?
    !current_admin.nil?
  end
end
