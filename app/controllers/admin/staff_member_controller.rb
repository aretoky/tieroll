class Admin::StaffMemberController < ApplicationController

  def index
    @staff_member = StaffMember.all 
  end

  def new
    @staff = StaffMember.new
  end

  def confirm
    @staff = StaffMember.new(staff_params)
  end

  def create
    @staff = StaffMember.new(staff_params)
    if params[:back]
      render :new
    elsif @staff.save
      redirect_to admin_root_url, notice: "新規スタッフを作成しました"
    else
      render :new, alert: "入力内容を確認してね"
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def staff_params
    params.require(:staff_member).permit(:company, :email, :password, :password_confirmation, :start_time, :end_time, :suspended)
  end
end
