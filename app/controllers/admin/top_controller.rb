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
    # binding.pry
  end

  def update
    binding.pry
    @admin.assign_attributes(params[:admin_id])
    if @admin.save
      redirect_to admin_root_url, notice: "更新完了"
    else
      render :edit, alert: "入力内容を確認して下さい"
    end
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

  def set_admin
    @admin = Admin.find_by(id: params[:admin_id])
  end

end
