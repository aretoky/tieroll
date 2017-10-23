class Admin::StaffMemberController < ApplicationController


  # 管理者内のスタッフコントローラー


  before_action :set_staff, only: [:show, :edit, :update, :destroy]

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
      redirect_to :admin_staff_member_index, notice: "新規スタッフを作成しました"
    else
      render :new, alert: "入力内容を確認してね"
    end
  end

  def edit
  end

  def update
    if @staff.update(staff_params)
      redirect_to admin_staff_member_index_path, notice: "更新しました"
    else
      render :new, alert: "内容に誤りがあるよ"
    end
  end

  def destroy
    @staff = StaffMember.find_by(id: params[:id])
    redirect_to :admin_staff_member_index, alert: "消した" if @staff.destroy
  end

  private
  def staff_params
    params.require(:staff_member).permit(:company, :email, :password, :password_confirmation, :start_time, :end_time, :suspended)
  end

  def set_staff
    @staff = StaffMember.find_by(id: params[:id])
  end
end
