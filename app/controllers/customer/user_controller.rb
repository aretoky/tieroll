class Customer::UserController < ApplicationController
  before_action :set_user, only: [:show, :edit, :destroy]
  def index
  end

  def show
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
      redirect_to :customer_root
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
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

  def set_user
    @user = User.find_by(id: params[:user_id])
  end
end
