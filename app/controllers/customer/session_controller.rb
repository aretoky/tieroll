class Customer::SessionController < Customer::Base
  def new
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      log_in user
      redirect_to '/'
    else
      render :new, alert: "入力内容を確認してね"
    end
  end

  def destroy
    log_out
    redirect_to '/'
  end
end
