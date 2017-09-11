class Admin::SessionController < ApplicationController
  def new
  end

  def create
    admin = Admin.finnd_by(email: params[:email])
    if admin && admin.authenticate(params[:password])
      log_in admin
      redirect_to admin_root_path
    else
      render :new
    end
  end

  def destroy
    log_out
  end
end
