class Customer::SessionController < ApplicationController
  def new
  end

  def create
    user = user.find_by(email: params[:email])
    if user
      log_in user
    else
      render :new, alert: "入力内容を確認してね"
    end
  end

  def destroy
    log_out
    redirect_to :customer_root
  end
end
