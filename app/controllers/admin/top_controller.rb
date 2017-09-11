class Admin::TopController < ApplicationController
  before_action :admin_logget_in?
  def idnex
  end

  def show
  end

  def new
    @admin = Admin.new
  end

  def confirm
    @admin = Admin.new(admin_params)
    render :new if @admin.invalid?
  end

  def create
    @admin = Admin.new(admin_params)
    if params[:back]
      render :new
    elsif @admin.save
      log_in @admin
      redirect_to admin_root_url
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def admin_params
    params.require(:admin).permit(:name, :email, :password, :password_confirmation)
  end
end
