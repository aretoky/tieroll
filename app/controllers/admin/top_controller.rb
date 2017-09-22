class Admin::TopController < Admin::Base
  before_action :are_you_admin?
  before_action :set_admin, only: [:edit]
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
      redirect_to admin_root_url, notice: "新しい管理者を作成しました"
    else
      render :new
    end
  end

  def edit
  end

  def update
    admin = Admin.find_by(id: params[:id])
    if admin.update(admin_params)
      redirect_to admin, notice: "変更したよ"
    else
      render :new, alert: "内容を確認してね"
    end
  end

  def destroy
    admin = Admin.find_by(id: params[:id])
    redirect_to admin_root_url if admin.destroy 
  end

  private
  def admin_params
    params.require(:admin).permit(:name, :email, :password, :password_confirmation)
  end

  def are_you_admin?
    redirect_to admin_login_url if current_admin.nil?
  end

  def set_admin
    @admin = Admin.find_by(id: params[:admin_id])
  end

end
