class Staff::PantController < taff::Base
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
  def pants_params
    params.require(:pant).permit(:price, :size, :color, :pattern, :season, :scene, :description, :raw_materials, :pant_name, :pant_code, :p_front, :p_back, :p_inner, :belt_roop)
  end
end
