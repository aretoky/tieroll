class Staff::SessionController < Staff::Base

  def new
  end

  def create
    staff = StaffMember.find_by(email: params[:email])
    if staff_login_check staff
      staff_login staff
      redirect_to :staff_root
    else
      render :new, alert: "入力内容を・・・"
    end
  end

  def destroy
    staff_logout
    redirect_to :staff_root
  end

  private
  def staff_login_check staff
    staff && staff.authenticate(params[:password]) && !staff.suspended? && Date.today >= staff.start_time && (staff.end_time.nil? || Date.today < staff.end_time)
  end

end
