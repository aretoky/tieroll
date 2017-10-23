module Staff::ProductHelper
  def set_staff
    if session[:staff_id]
      @staff = StaffMember.find_by(id: session[:staff_id])
    else
      redirect_to :staff_login
    end
  end
end
