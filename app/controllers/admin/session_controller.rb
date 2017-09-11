class Admin::SessionController < Admin::Base
  def new
  end

  def create
    admin = Admin.find_by(email: params[:email])
    if admin && admin.authenticate(params[:password])
      log_in admin
      current_admin
      redirect_to admin_root_path
    else
      render :new
    end
  end

  def destroy
    log_out
    redirect_to admin_root_url
  end
end
