class Staff::MemberController < Staff::Base
  before_action :are_you_staff?, only: [:show]
  before_action :set_staff, only: [:show]
  def show
  end

  private
  def set_staff
    @staff = StaffMember.find_by(id: session[:staff_id])
  end
end
