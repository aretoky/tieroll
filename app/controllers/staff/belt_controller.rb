class Staff::BeltController < Staff::Base
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
  def belt_params
    params.require(:belt).permit(:price, :size, :color, :pattern, :season, :scene, :description, :belt_name, :belt_code, :belt_one, :belt_two, :belt_three, :belt_four)
  end 

end
