class Staff::Base < ApplicationController
  helper_method :current_staff

  def staff_login staff
    session[:staff_id] = staff.id
  end

  def staff_logout
    session[:staff_id] = nil
  end

  def current_staff
    @current_staff ||= StaffMember.find_by(id: session[:staff_id])
  end

  def are_you_staff?
    if current_staff.nil?
      redirect_to :staff_login
    end 
  end
end
