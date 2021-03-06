class Customer::UserController < Customer::Base
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def show
    # binding.pry
  end

  def new
    @user = User.new
  end

  def confirm
    @user = User.new(user_params)
    render :new, alert: "入力内容をかくにんしてね" if @user.invalid?
  end

  def create
    @user = User.new(user_params)
    if params[:back]
      render :new
    elsif @user.save
      log_in @user
      redirect_to :customer_root
    else
      render :new, alert: "入力内容を確認してね"
    end
  end

  def edit
  end

  def update
    if @user.update_attributes(user_params)
      redirect_to customer_user_url(@user), notice: "更新完了"
    else
      render :edit, alert: '内容を確認してね'
    end
  end

  def destroy
    if @user.destroy
      log_out
      redirect_to :root
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

  def set_user
    @user = User.find_by(id: session[:user_id])
  end

  # def are_you_login?
  #   redirect_to :customer_login, alert: "ログインして下さいね" unless current_user
  # end

end
