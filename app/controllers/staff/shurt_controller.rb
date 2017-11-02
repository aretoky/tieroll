class Staff::ShurtController < Staff::Base
  before_action :are_you_staff_member?, only: [:index, :new, :create, :show, :edit, :update, :destroy]

  def index
  end

  def new
  end

  def confirm
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def shurt_params
    params.require(:shurt).permit(:price, :size, :color, :pattern, :season, :scene, :description, :shurt_name, :shurt_code, :s_front, :s_back, :s_button, :s_breast_pocket, :colar, :s_other)
  end
end
