class Staff::TiePinController < Staff::Base
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
  def ite_pin_params
    params.require(:ite_pin).permit(:price, :size, :color, :pattern, :season, :scene, :description, :tie_pin_name. :tie_pin_code, :tie_pin_one, :tie_pin_two, :tie_pin_three)
  end 
end
