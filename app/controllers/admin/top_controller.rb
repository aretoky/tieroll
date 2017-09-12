class Admin::TopController < Admin::Base
  # before_action :current_admin, only: [:index]
  before_action :are_you_admin?, only: [:index]
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
      flash.notice = "新しい管理者を作成"
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

  def are_you_admin?
    redirect_to admin_login_url if current_admin.nil?
  end

end
