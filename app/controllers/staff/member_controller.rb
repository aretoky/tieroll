class Staff::MemberController < Staff::Base
  before_action :are_you_staff?
  before_action :set_staff, only: [:show, :edit, :update, :destroy]
  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
  private
  def set_staff
    @staff = StaffMember.find_by(id: session[:staff_id])
  end
end
